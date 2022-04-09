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

#endif /* Fruit_hpp */
