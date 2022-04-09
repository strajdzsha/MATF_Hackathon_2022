//
//  PayLine.hpp
//  MatHack
//
//  Created by Aleksa on 4/9/22.
//

#ifndef PayLine_hpp
#define PayLine_hpp

#include <stdio.h>
#include "SlotMachine.hpp"
#include "Reel.hpp"

class SlotMachine;

class PayLine
{
private:
    int numberOfReels_;
    int* positionInReel_;
public:
    //position in reel can be -1, 0, 1.
    PayLine(int numberOfReels, int* positionInReel);
    int findNumberOfConsecutive(SlotMachine* slotMachine);
    string getType(SlotMachine* slotMachine);
};

#endif /* PayLine_hpp */
