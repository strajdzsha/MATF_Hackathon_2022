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

class PayLine
{
private:
    int numberOfFruits_;
    int* positionInReel_;
public:
    //position in reel can be -1, 0, 1.
    PayLine(int numberOfFruits, int* positionInReel);
    int findNumberOfConsecutive(SlotMachine* slotMachine);
};

#endif /* PayLine_hpp */
