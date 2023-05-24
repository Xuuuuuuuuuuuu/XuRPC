#include "xurpcchannel.h"
#include <string>
#include "xurpcheader.pb.h"
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <unistd.h>
#include <errno.h>
#include "xurpcapplication.h"
#include "xurpccontroller.h"
#include "zookeeperutil.h"


void XurpcChannel::CallMethod(const google::protobuf::MethodDescriptor* method,
                                google::protobuf::RpcController* controller,
                                const google::protobuf::Message* request,
                                google::protobuf::Message* response,
                                google::protobuf::Closure* done)
{
    // 从method实参中获取服务名字和方法名字
    const google::protobuf::ServiceDescriptor* sd = method->service();
    std::string service_name = sd->name();
    std::string method_name = method->name();

    // 获取请求中传入的参数详情，这个参数是客户端调用rpc服务端方法传入的参数
    uint32_t arg_size = 0;
    std::string arg_str;
    if (request->SerializeToString(&arg_str)) {
        arg_size = arg_str.size();
    } else {
        // 序列化失败，把错误信息传递给controller对象
        controller->SetFailed("serialize request error!");
        return;
    }

    // 根据上面得到的信息构建请求的header
    // 并获得其字符串
    // 定义rpc的请求header
    xurpc::RpcHeader rpcHeader;
    rpcHeader.set_service_name(service_name);
    rpcHeader.set_method_name(method_name);
    rpcHeader.set_args_size(arg_size);

    uint32_t header_size = 0;
    std::string rpc_header_str;
    if (rpcHeader.SerializeToString(&rpc_header_str)) {
        header_size = rpc_header_str.size();
    } else {
        controller->SetFailed("serialize rpcheader error!");
        return;
    }


    // 构建待发送的rpc请求的字符串
    std::string rpc_req_str;

    rpc_req_str.insert(0, std::string((char*)&header_size, 4));
    rpc_req_str += rpc_header_str;
    rpc_req_str += arg_str;

    // 打印调试信息
    std::cout << "============================================" << std::endl;
    std::cout << "header_size: " << header_size << std::endl; 
    std::cout << "rpc_header_str: " << rpc_header_str << std::endl; 
    std::cout << "service_name: " << service_name << std::endl; 
    std::cout << "method_name: " << method_name << std::endl; 
    std::cout << "arg_str: " << arg_str << std::endl; 
    std::cout << "============================================" << std::endl;

    // tcp编程，进行rpc方法的调用
    int clientfd = socket(AF_INET, SOCK_STREAM, 0);
    if (-1 == clientfd) {
        char errtxt[512] = {0};
        sprintf(errtxt, "create socket error! errno:%d", errno);
        controller->SetFailed(errtxt);
        return;
    }

    // 客户端已经将需要发送的请求字符串准备完毕
    // 现在需要知道其想要调用的方法 哪台服务端提供服务调用
    // zk中存储了服务端及其正在提供的服务方法 的映射关系
    ZkClient zkCli;
    zkCli.Start();
    

    std::string zk_path = "/" + service_name + "/" + method_name;

    std::string service_host_info = zkCli.GetData(zk_path.c_str());
    if (service_host_info == "") {
        controller->SetFailed(zk_path + " is not exist!");
        return;
    }

    int idx = service_host_info.find(":");
    if (idx == -1) {
        controller->SetFailed(zk_path + " address is not available!");
        return;
    }

    std::string service_host_ip = service_host_info.substr(0, idx);
    uint16_t service_host_port = atoi(service_host_info.substr(idx+1, service_host_info.size()-idx).c_str());

    struct sockaddr_in server_addr;
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(service_host_port);
    server_addr.sin_addr.s_addr = inet_addr(service_host_ip.c_str());

    if (-1 == connect(clientfd, (struct sockaddr*)&server_addr, sizeof(server_addr))) {
        close(clientfd);
        char errtxt[512] = {0};
        sprintf(errtxt, "connet error! errno:%d", errno);
        controller->SetFailed(errtxt);
        return;
    }

    if (-1 == send(clientfd, rpc_req_str.c_str(), rpc_header_str.size(), 0)) {
        close(clientfd);
        char errtxt[512] = {0};
        sprintf(errtxt, "send error! errno:%d", errno);
        controller->SetFailed(errtxt);
        return;
    }

    char recv_buf[1024] = {0};
    int recv_size = 0;
    if (-1 == (recv_size == recv(clientfd, recv_buf, 1024, 0))) {
        close(clientfd);
        char errtxt[512] = {0};
        sprintf(errtxt, "recv error! errno:%d", errno);
        controller->SetFailed(errtxt);
        return;
    }


    // 这里直接从字符数组加长度的方式来parse reponse，能避免空字符干扰吗？
    if (!response->ParseFromArray(recv_buf, recv_size)){
        close(clientfd);
        char errtxt[512] = {0};
        sprintf(errtxt, "parse error! response_str:%s", recv_buf);
        controller->SetFailed(errtxt);
        return;
    }

    close(clientfd);

}