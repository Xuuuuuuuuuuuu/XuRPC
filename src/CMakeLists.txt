set(SRC_LIST
    xurpcapplication.cc
    xurpcconfig.cc
    xurpcheader.pb.cc
    xurpcprovider.cc
    xurpcchannel.cc
    xulogger.cc
    zookeeperutil.cc
    xurpccontroller.cc)

add_library(xurpc ${SRC_LIST})
target_link_libraries(xurpc muduo_net muduo_base pthread zookeeper_mt)