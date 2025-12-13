#include <iostream>
#include "coke/coke.h"

coke::Task<> helloworld()
{
    for (size_t i = 0; i < 3; i++) {
        co_await coke::sleep(0.5);
        std::cout << "Hello World" << std::endl;
    }
}

int main()
{
    coke::sync_wait(helloworld());
    return 0;
}
