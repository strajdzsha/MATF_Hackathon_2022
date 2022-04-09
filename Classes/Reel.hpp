//
//  Reel.hpp
//  MATFHackathon
//
//  Created by Aleksa on 4/9/22.
//  Copyright © 2022 as. All rights reserved.
//

#ifndef Reel_hpp
#define Reel_hpp

#include <stdio.h>
#include <iostream>
#include <algorithm>
#include <random>
#include "Fruit.hpp"

using namespace std;

class Reel
{
private:
    int numberOfFruits_;
    Fruit** fruits_;
    int centralPosition_=0;
public:
    Reel(int numberOfFruits, Fruit** fruits);
    Reel(int numberOfFruits);
    void changeFruit(Fruit* fruit, int position);
    void changeFruit(Fruit& fruit, int position);
    void randomShuffle();
    void spin(int by);//+ for down, - for up
    void outputReel();
    Fruit* getUpperFruit() const;
    Fruit* getCentralFruit() const;
    Fruit* getDownFruit() const;
    int getNumberOfFruitsOnReel() const;
    int getCentralPosition() const;
    Fruit* getFruitAtPosition(int position) const;
};

#endif /* Reel_hpp */
