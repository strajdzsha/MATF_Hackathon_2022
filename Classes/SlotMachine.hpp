//
//  SlotMachine.hpp
//  MATFHackathon
//
//  Created by Aleksa on 4/9/22.
//  Copyright © 2022 as. All rights reserved.
//

#ifndef SlotMachine_hpp
#define SlotMachine_hpp

#include <stdio.h>
#include <thread>
#include <chrono>
#include "Reel.hpp"
#include "Fruit.hpp"
#include "PayLine.hpp"
#include "Combination.hpp"
#include "Test.hpp"

using namespace std;
using namespace std::chrono;

class PayLine;
class Test;

class SlotMachine
{
    friend class Test;
private:
    bool threadWorking=false;
    thread* spinThread=nullptr;
    int numberOfReels_;
    Reel** reels_;
    void spin();//function will move all the reels for some small movement, either up or down
    PayLine** payLines_;
    Combination** combinations_;
    int numberOfPayLines_;
    int numberOfCombinations_;
public:
    SlotMachine(int numberOfReels, Reel** reels, PayLine** payLines, Combination** combinations, int numberOfPayLines, int numberOfCombinations);
    static void spinWrapper(SlotMachine* slotMachine);
    void spinIt();
    void spinStop();
    static void busyWait(double t);//in seconds
    void outputReels();
    int getNumberOfReels();
    Fruit* getFruit(int reelId, int positionInReel);
    int calculateWin();
    Reel** getReels();
};

#endif /* SlotMachine_hpp */
