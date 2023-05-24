#pragma once

#include <queue>
#include <thread>
#include <mutex>
#include <condition_variable>

template<typename T>
class LockQueue {
public:
    void Push(const T& data) {
        std::lock_guard<std::mutex> lock(x_mutex);
        x_queue.push(data);
        x_condvariable.notify_one();
    }

    T Pop() {
        std::unique_lock<std::mutex> lock(x_mutex);
        while (x_queue.empty()) {
            x_condvariable.wait(lock);
        }
        T data = x_queue.front();
        x_queue.pop();
        return data;
    }
    

private:
    std::queue<T> x_queue;
    std::mutex x_mutex;
    std::condition_variable x_condvariable;
};