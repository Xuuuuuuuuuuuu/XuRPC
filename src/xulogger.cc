#include "xulogger.h"
#include <time.h>
#include <iostream>

XuLogger& XuLogger::GetInstance() {
    static XuLogger logger;
    return logger;
}

XuLogger::XuLogger() {
    std::thread writeLogTask([&](){
        for (;;) {
            // 获取当前时间
            time_t now = time(nullptr);
            tm *nowtm = localtime(&now);

            // 用当前时间的年月日作为日志文件名
            char file_name[128];
            sprintf(file_name, "%d-%d-%d-log.txt", nowtm->tm_year+1900, nowtm->tm_mon+1, nowtm->tm_mday);

            // 以追加模式打开文件，如果文件名不存在就新建文件
            FILE* pf = fopen(file_name, "a+");

            if (pf == nullptr) {
                std::cout << "logger file : " << file_name << " open error!" << std::endl;
                exit(EXIT_FAILURE);
            }

            // pop队列，获得日志信息
            std::string msg = m_lckQue.Pop();

            // 获取详细的时间信息和日志级别信息，追加到日志信息中
            char time_buf[128] = {0};
            sprintf(time_buf, "%d:%d:%d => [%s] ",
                    nowtm->tm_hour,
                    nowtm->tm_min,
                    nowtm->tm_sec,
                    (m_loglevel == INFO ? "info" : "error"));

            msg.insert(0, time_buf);
            msg.append("\n");

            fputs(msg.c_str(), pf);
            fclose(pf);

        }
    });

    // 分离写日志线程，守护线程
    writeLogTask.detach();
}


// 设置日志级别 
void XuLogger::SetLogLevel(LogLevel level)
{
    m_loglevel = level;
}

// 写日志， 把日志信息写入lockqueue缓冲区当中
void XuLogger::Log(std::string msg)
{
    m_lckQue.Push(msg);
}