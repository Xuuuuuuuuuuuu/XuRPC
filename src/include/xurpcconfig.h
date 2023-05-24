#pragma once

#include <unordered_map>
#include <string>
/*
    本类用于处理XuRPC框架中所用到的配置文件
    包括读取配置文件信息并格式化输入到类中map变量中
    以及从map中获取给定key到值
*/
class XurpcConfig {
public:
    // 传入指定文件名，从文件加载配置信息到x_configMap变量中
    void ParseConfigFile(const char* config_file);
    // 查询配置项信息
    std::string LoadInfo(const std::string& key);

private:
    std::unordered_map<std::string, std::string> x_configMap;

    // 去掉字符串前后的空格
    void Trim(std::string &src_buf);

};