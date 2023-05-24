#include<iostream>
#include "xurpcapplication.h"
#include "friend.pb.h"

int main(int argc, char **argv) {
    XurpcApplication::Init(argc, argv);

    fixbug::FriendServiceRpc_Stub stub(new XurpcChannel());

    fixbug::GetFriendsListRequest request;
    request.set_userid(1000);

    fixbug::GetFriendsListResponse response;

    XurpcController controller;

    stub.GetFriendsList(&controller, &request, &response, nullptr);



    if (controller.Failed()) {
        std::cout << controller.ErrorText() << std::endl;
    } else {
        if (0 == response.result().errcode()) {
            std::cout << "rpc GetFriendList response success!" << std::endl;
            int size = response.friends_size();
            for (int i = 0; i < size; ++i) {
                std::cout << "index: " << (i + 1) << "name: " << response.friends(i) << std::endl;
            }
        } else {
            std::cout << "rpc GetFriendList execute error: " << response.result().errmsg() << std::endl;
        }
    }

    return 0;


}