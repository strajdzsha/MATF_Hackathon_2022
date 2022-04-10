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
    if(getType(slotMachine) == "FruitS")
    {
        for(int i = 1; i < slotMachine->getNumberOfReels(); i++)
        {
            Fruit* f = slotMachine->getFruit(i, this->positionInReel_[i]);
            if(f->getType() != "FruitS")return i;
        }
        return slotMachine->getNumberOfReels();
    }
    for(int i = 1; i < slotMachine->getNumberOfReels(); i++)
    {
        Fruit* f1 = slotMachine->getFruit(i, this->positionInReel_[i]);
        Fruit* f2 = slotMachine->getFruit(i-1, this->positionInReel_[i-1]);
        if(f1 == nullptr || f2 == nullptr)return 0;
        if(f1->getType() !=
           f2->getType() && f1->getType() != "FruitS" && f2->getType() != "FruitS")return i;
    }
    return slotMachine->getNumberOfReels();
}

string PayLine::getType(SlotMachine* slotMachine)
{
    if(slotMachine->getNumberOfReels() != this->numberOfReels_)return "";
    Fruit* f = slotMachine->getFruit(0, this->positionInReel_[0]);
    if(f==nullptr)return "";
    Fruit* f1 = slotMachine->getFruit(1, this->positionInReel_[1]);
    Fruit* f2 = slotMachine->getFruit(2, this->positionInReel_[2]);
    if(f1 == nullptr || f2 == nullptr)return "";
    if(f->getType() == "FruitS" && f1->getType() == "FruitS" && f2->getType() == "FruitS")return "FruitS";
    if(f1->getType() != "FruitS")return f1->getType();
    if(f2->getType() != "FruitS")return f2->getType();
    return f->getType();
}
