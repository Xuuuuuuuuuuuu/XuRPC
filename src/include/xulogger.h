#pragma once
#include "lockqueue.h"
#include <string>

// 定义宏 LOG_INFO("xxx %d %s", 20, "xxxx")
#define LOG_INFO(logmsgformat, ...) \
    do \
    {  \
        XuLogger &logger = XuLogger::GetInstance(); \
        logger.SetLogLevel(INFO); \
        char c[1024] = {0}; \
        snprintf(c, 1024, logmsgformat, ##__VA_ARGS__); \
        logger.Log(c); \
    } while(0) \

#define LOG_ERR(logmsgformat, ...) \
    do \
    {  \
        XuLogger &logger = XuLogger::GetInstance(); \
        logger.SetLogLevel(ERROR); \
        char c[1024] = {0}; \
        snprintf(c, 1024, logmsgformat, ##__VA_ARGS__); \
        logger.Log(c); \
    } while(0) \

// 定义日志级别
enum LogLevel
{
    INFO,  // 普通信息
    ERROR, // 错误信息
};

// Mprpc框架提供的日志系统
class XuLogger
{
public:
    // 获取日志的单例
    static XuLogger& GetInstance();
    // 设置日志级别 
    void SetLogLevel(LogLevel level);
    // 写日志,实际上是连接处理线程将需要记录的日志写入队列中
    void Log(std::string msg);
private:
    int m_loglevel; // 记录日志级别
    LockQueue<std::string>  m_lckQue; // 日志缓冲队列

    // 在构造函数中加入真正写日志文件的逻辑，将其作为后台线程单独分离出来
    XuLogger();
    XuLogger(const XuLogger&) = delete;
    XuLogger(XuLogger&&) = delete;
};