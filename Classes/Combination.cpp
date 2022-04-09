//
//  Combination.cpp
//  MatHack
//
//  Created by Aleksa on 4/9/22.
//

#include "Combination.hpp"

Combination::Combination(string type, int numberOfReels, int* awards)
{
    this->type_ = type;
    this->numberOfReels_ = numberOfReels;
    this->awards_ = awards;
}

int Combination::getAward(int consecutiveCount)
{
    if(consecutiveCount-1 < 0 || consecutiveCount-1 >= this->numberOfReels_)return 0;
    return this->awards_[consecutiveCount-1];
}

string Combination::getType() {return this->type_;}
