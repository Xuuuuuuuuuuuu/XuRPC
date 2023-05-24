#pragma once
#include <google/protobuf/service.h>
#include <string>

// 继承自protobuf中的controller类，用来给框架调用记录传输中的错误信息的
// 默认是不出错，没有错误信息：m_failed = false, m_errText = ""
class XurpcController : public google::protobuf::RpcController
{
public:
    XurpcController();
    void Reset();
    bool Failed() const;
    std::string ErrorText() const;
    void SetFailed(const std::string& reason);

    // 目前未实现具体的功能
    void StartCancel();
    bool IsCanceled() const;
    void NotifyOnCancel(google::protobuf::Closure* callback);
private:
    bool m_failed; // RPC方法执行过程中的状态
    std::string m_errText; // RPC方法执行过程中的错误信息
};