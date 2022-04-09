//
//  Combination.hpp
//  MatHack
//
//  Created by Aleksa on 4/9/22.
//

#ifndef Combination_hpp
#define Combination_hpp

#include <stdio.h>
#include <string>
using namespace std;

class Combination
{
private:
    string type_;
    int numberOfReels_;//
    int* awards_;
public:
    Combination(string type, int numberOfReels, int* awards);
    int getAward(int consecutiveCount);
    string getType();
};

#endif /* Combination_hpp */
