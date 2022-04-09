//
//  PayLine.cpp
//  MatHack
//
//  Created by Aleksa on 4/9/22.
//

#include "PayLine.hpp"

PayLine::PayLine(int numberOfReels, int* positionInReel)
{
    this->numberOfReels_ = numberOfReels;
    this->positionInReel_ = positionInReel;
}

int PayLine::findNumberOfConsecutive(SlotMachine* slotMachine)
{
    if(slotMachine->getNumberOfReels() != this->numberOfReels_)return 0;
    for(int i = 1; i < slotMachine->getNumberOfReels(); i++)
    {
        Fruit* f1 = slotMachine->getFruit(i, this->positionInReel_[i]);
        Fruit* f2 = slotMachine->getFruit(i-1, this->positionInReel_[i-1]);
        if(f1 == nullptr || f2 == nullptr)return 0;
        if(f1->getType() !=
           f2->getType())return i;
    }
    return slotMachine->getNumberOfReels();
}

string PayLine::getType(SlotMachine* slotMachine)
{
    if(slotMachine->getNumberOfReels() != this->numberOfReels_)return "";
    Fruit* f = slotMachine->getFruit(0, this->positionInReel_[0]);
    if(f==nullptr)return "";
    return f->getType();
}
