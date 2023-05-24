#pragma once

#include "xurpcconfig.h"
#include "xurpcchannel.h"
#include "xurpccontroller.h"

/*
    XuRPC框架的入口类，里面维持一个配置类变量
    提供了框架初始化的方法：主要就是读取配置文件的信息到config变量中
*/
class XurpcApplication {
public:
    static void Init(int argc, char** argv);
    static XurpcApplication& GetInstance();
    static XurpcConfig& GetConfig();

private:
    static XurpcConfig x_config;

    XurpcApplication(){}
    XurpcApplication(const XurpcApplication&) = delete;
    XurpcApplication(XurpcApplication&&) = delete;
};