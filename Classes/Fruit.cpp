//
//  Fruit.cpp
//  MATFHackathon
//
//  Created by Aleksa on 4/9/22.
//  Copyright © 2022 as. All rights reserved.
//

#include "Fruit.hpp"

Fruit** Fruit::makeFruitArray(int fruit1Cnt, int fruit2Cnt, int fruit3Cnt, int fruit4Cnt, int fruit5Cnt, int fruitSCnt)
{
    Fruit** fruits = new Fruit*[fruit1Cnt + fruit2Cnt + fruit3Cnt + fruit4Cnt + fruit5Cnt + fruitSCnt];
    Fruit1* fr1 = new Fruit1();
    Fruit2* fr2 = new Fruit2();
    Fruit3* fr3 = new Fruit3();
    Fruit4* fr4 = new Fruit4();
    Fruit5* fr5 = new Fruit5();
    FruitS* frS = new FruitS();
    int gap = 0;
    for(int i = 0; i < fruit1Cnt; i++)fruits[i+gap] = fr1;
    gap += fruit1Cnt;
    for(int i = 0; i < fruit2Cnt; i++)fruits[i+gap] = fr2;
    gap += fruit2Cnt;
    for(int i = 0; i < fruit3Cnt; i++)fruits[i+gap] = fr3;
    gap += fruit3Cnt;
    for(int i = 0; i < fruit4Cnt; i++)fruits[i+gap] = fr4;
    gap += fruit4Cnt;
    for(int i = 0; i < fruit5Cnt; i++)fruits[i+gap] = fr5;
    gap += fruit5Cnt;
    for(int i = 0; i < fruitSCnt; i++)fruits[i+gap] = frS;
    gap += fruitSCnt;
    return fruits;
}

string Fruit1::getType() const
{
    return "Fruit1";
}

string Fruit2::getType() const
{
    return "Fruit2";
}

string Fruit3::getType() const
{
    return "Fruit3";
}

string Fruit4::getType() const
{
    return "Fruit4";
}

string Fruit5::getType() const
{
    return "Fruit5";
}

string FruitS::getType() const
{
    return "FruitS";
}
