//
//  Fruit.hpp
//  MATFHackathon
//
//  Created by Aleksa on 4/9/22.
//  Copyright © 2022 as. All rights reserved.
//

#ifndef Fruit_hpp
#define Fruit_hpp

#include <stdio.h>
#include <string>

using namespace std;

class Fruit
{
public:
    virtual string getType() const=0;
    static Fruit** makeFruitArray(int fruit1Cnt, int fruit2Cnt, int fruit3Cnt, int fruit4Cnt, int fruit5Cnt, int fruitSCnt);
};

class Fruit1 : public Fruit
{
public:
    string getType() const override;
};

class Fruit2 : public Fruit
{
public:
    string getType() const override;
};

class Fruit3 : public Fruit
{
public:
    string getType() const override;
};

class Fruit4 : public Fruit
{
public:
    string getType() const override;
};

class Fruit5 : public Fruit
{
public:
    string getType() const override;
};

class FruitS : public Fruit
{
public:
    string getType() const override;
};

#endif /* Fruit_hpp */
