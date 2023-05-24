#include "xurpccontroller.h"


XurpcController::XurpcController()
{
    m_failed = false;
    m_errText = "";
}

void XurpcController::Reset()
{
    m_failed = false;
    m_errText = "";
}

bool XurpcController::Failed() const
{
    return m_failed;
}

std::string XurpcController::ErrorText() const
{
    return m_errText;
}

void XurpcController::SetFailed(const std::string& reason)
{
    m_failed = true;
    m_errText = reason;
}

// 目前未实现具体的功能
void XurpcController::StartCancel(){}
bool XurpcController::IsCanceled() const {return false;}
void XurpcController::NotifyOnCancel(google::protobuf::Closure* callback) {}