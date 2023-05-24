#pragma once
#include "google/protobuf/service.h"
#include <muduo/net/TcpServer.h>
#include <muduo/net/EventLoop.h>
#include <muduo/net/InetAddress.h>
#include <muduo/net/TcpConnection.h>
#include <string>
#include <functional>
#include <google/protobuf/descriptor.h>
#include <unordered_map>

/*
    提供给rpc服务或方法的发布方的网络对象类
    包括rpc注册、启动的外部调用方法
    以及当前节点发布rpc服务的记录变量x_serviceMap：服务名字符串-服务信息结构体 ｜ 服务信息结构体ServiceInfo：服务指针-该服务中已发布的rpc方法集合 ｜ 方法集合x_methodMap：方法名字符串-方法描述符
*/
class XuRpcProvider {
public:
    // 框架提供给rpc方法的provider，用于向框架注册rpc方法
    void NotifyService(google::protobuf::Service *service);

    // 启动rpc服务节点，开始提供rpc远程网络调用服务
    void Run();


private:
    // 组合EventLoop
    muduo::net::EventLoop x_eventLoop;

    // 记录service的详情信息，包括服务的基类指针，以及服务所包含的所有rpc方法详情
    struct ServiceInfo
    {
        google::protobuf::Service *x_service;
        std::unordered_map<std::string, const google::protobuf::MethodDescriptor*> x_methodMap;

    };

    // 存储注册成功的服务对象和其服务对象的所有信息
    std::unordered_map<std::string, ServiceInfo> x_serviceMap;

    // 建立连接后的回调函数
    void OnConnection(const muduo::net::TcpConnectionPtr&);

    // 接收客户端所发送请求后的回调函数
    void OnMessage(const muduo::net::TcpConnectionPtr&, muduo::net::Buffer*, muduo::Timestamp);

    // 框架调用已注册rpc方法时所需要的回调函数，在这里主要做对rpc响应的序列化以及网络发送
    void SendRpcResponse(const muduo::net::TcpConnectionPtr&, google::protobuf::Message*);
    
};