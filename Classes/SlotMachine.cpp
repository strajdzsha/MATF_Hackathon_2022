//
//  SlotMachine.cpp
//  MATFHackathon
//
//  Created by Aleksa on 4/9/22.
//  Copyright © 2022 as. All rights reserved.
//

#include "SlotMachine.hpp"

static std::random_device rd; // random device engine, usually based on /dev/random on UNIX-like systems
// initialize Mersennes' twister using rd to generate the seed
static std::mt19937 rng{rd()};

SlotMachine::SlotMachine(int numberOfReels, Reel** reels)
{
    this->numberOfReels_ = numberOfReels;
    this->reels_ = reels;
}

void SlotMachine::spin()
{
    int finalState[this->numberOfReels_];
    for(int i = 0; i < this->numberOfReels_; i++)
    {
        static std::uniform_int_distribution<int> uid(0,this->reels_[i]->getNumberOfFruitsOnReel()-1);
        finalState[i] = uid(rng);
        cout << "Generating final state for: " << i << " outputs " << finalState[i] << endl;
    }
    while(threadWorking)
    {
        busyWait(0.2);
        for(int i = 0; i < this->numberOfReels_; i++)
        {
            static std::uniform_int_distribution<int> uid(1,this->reels_[i]->getNumberOfFruitsOnReel()-1);
            int by = uid(rng);
            if(uid(rng) % 2 == 1)by *= -1;
            this->reels_[i]->spin(by);
        }
        cout << "<------------------------------->\n";
        this->outputReels();
        cout << "<------------------------------->\n";
    }
    for(int i = 0; i < this->numberOfReels_; i++)
    {
        this->reels_[i]->spin(finalState[i] - this->reels_[i]->getCentralPosition());
    }
}

void SlotMachine::spinWrapper(SlotMachine *slotMachine)
{
    if(slotMachine)slotMachine->spin();
}

void SlotMachine::spinIt()
{
    //if(spinThread)spinThread->
    if(spinThread)
    {
        threadWorking = false;
        spinThread->join();
        delete spinThread;
        spinThread = nullptr;
    }
    threadWorking = true;
    spinThread = new thread(spinWrapper,this);
}

void SlotMachine::spinStop()
{
    if(!spinThread)return;
    threadWorking = false;
    spinThread->join();
    delete spinThread;
    spinThread = nullptr;
}

void SlotMachine::busyWait(double t)
{
    auto start = high_resolution_clock::now();
    while(1)
    {
        auto stop = high_resolution_clock::now();
        auto duration = duration_cast<milliseconds>(stop - start);
        if(duration.count() >= t*1000)break;
        int z = 0;
        int p = 3;
        for(int i = 0; i < 10000; i++)z+=p;
    }
    
}

void SlotMachine::outputReels()
{
    for(int j = 0; j < 3; j++)
    {
        for(int i = 0; i < this->numberOfReels_; i++)
        {
            if(j==0)cout << this->reels_[i]->getUpperFruit()->getType() << " ";
            else if(j==1)cout << this->reels_[i]->getCentralFruit()->getType() << " ";
            else cout << this->reels_[i]->getDownFruit()->getType() << " ";
        }
        cout << endl;
    }
}

int SlotMachine::getNumberOfReels()
{
    return this->numberOfReels_;
}

Fruit* SlotMachine::getFruit(int reelId, int positionInReel)
{
    if(reelId >= this->numberOfReels_)return nullptr;
    Reel* reel = this->reels_[reelId];
    if(reel==nullptr)return nullptr;
    if(positionInReel == -1)return reel->getUpperFruit();
    else if(positionInReel == 0)return reel->getCentralFruit();
    else if(positionInReel == 1)return reel->getDownFruit();
    return nullptr;
}
