//
//  main.cpp
//  MATFHackathon
//
//  Created by Aleksa on 4/9/22.
//  Copyright © 2022 as. All rights reserved.
//

#include <iostream>
#include <thread>
#include <chrono>
#include "Reel.hpp"
#include "Fruit.hpp"
#include "SlotMachine.hpp"

using namespace std;
using namespace std::chrono;

void foo()
{
    for(int i = 0; i < 5; i++)cout << "WOW" << endl;
}

int main(int argc, const char * argv[]) {
    Fruit* f[] = {new Fruit1(),new Fruit2(),new Fruit1(),new Fruit2(),new Fruit1(),new Fruit2()};
    Reel* reel = new Reel(6,f);
    reel->randomShuffle();
    reel->outputReel();
    reel->spin(2);
    reel->spin(-1);
    cout << reel->getUpperFruit()->getType() << endl;
    cout << reel->getCentralFruit()->getType() << endl;
    cout << reel->getDownFruit()->getType() << endl;
    
    //thread t1(foo);
    //t1.join();
    
    //Reel* reels[] = {reel, reel, reel, reel, reel};
    Reel** reels = new Reel*[5];
    for(int i = 0; i < 5; i++)
    {
        reels[i] = new Reel(6,f);
        reels[i]->randomShuffle();
    }
    
    SlotMachine* slotMachine = new SlotMachine(5,reels);
    slotMachine->outputReels();
    
    auto start = high_resolution_clock::now();
    slotMachine->spinIt();
    SlotMachine::busyWait(2.0);
    auto stop = high_resolution_clock::now();
    auto duration = duration_cast<milliseconds>(stop - start);
    cout << "Time taken by function: "
            << duration.count() << " miliseconds" << endl;
    slotMachine->spinStop();
    slotMachine->outputReels();
    
    return 0;
}
