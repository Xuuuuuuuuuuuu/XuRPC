#include "xurpcapplication.h"
#include <iostream>
#include <unistd.h>
#include <string>

XurpcConfig XurpcApplication::x_config;

void ShowArgsHelp() {
    std::cout << "format: command -i <configfile>" << std::endl;
}

void XurpcApplication::Init(int argc, char** argv) {
    if (argc < 2) {
        ShowArgsHelp();
        exit(EXIT_FAILURE);
    }

    int c = 0;
    std::string config_file;

    while ((c = getopt(argc, argv, "i:")) != -1) {
        switch (c)
        {
        case 'i':
            config_file = optarg;
            break;
        case '?':
            ShowArgsHelp();
            exit(EXIT_FAILURE);
        case ':':
            ShowArgsHelp();
            exit(EXIT_FAILURE);
        default:
            break;
        }
    }

    x_config.ParseConfigFile(config_file.c_str());
}


XurpcApplication& XurpcApplication::GetInstance() {
    static XurpcApplication app;
    return app;
}

XurpcConfig& XurpcApplication::GetConfig() {
    return x_config;
}