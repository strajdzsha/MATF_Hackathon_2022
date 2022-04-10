//
//  Test.hpp
//  MatHack
//
//  Created by Aleksa on 4/9/22.
//

#ifndef Test_hpp
#define Test_hpp

#include <stdio.h>
#include <iostream>
#include <thread>
#include <chrono>
#include "Reel.hpp"
#include "Fruit.hpp"
#include "SlotMachine.hpp"

using namespace std;
using namespace std::chrono;

class SlotMachine;

class Test
{
public:
    static void main();
    static SlotMachine* makeSlotMachine();
    static void testRTP();
};

#endif /* Test_hpp */
