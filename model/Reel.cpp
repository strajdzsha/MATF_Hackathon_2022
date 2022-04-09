//
//  Reel.cpp
//  MATFHackathon
//
//  Created by Aleksa on 4/9/22.
//  Copyright © 2022 as. All rights reserved.
//

#include "Reel.hpp"

using namespace std;

Reel::Reel(int numberOfFruits, Fruit** fruits)
{
    this->numberOfFruits_ = numberOfFruits;
    this->fruits_ = new Fruit*[numberOfFruits];
    for(int i = 0; i < numberOfFruits_; i++)
    {
        this->fruits_[i] = fruits[i];
    }
}

Reel::Reel(int numberOfFruits)
{
    this->fruits_ = new Fruit*[numberOfFruits];
    this->numberOfFruits_ = numberOfFruits;
    for(int i = 0; i < numberOfFruits_; i++)fruits_[i]=nullptr;
}

void Reel::changeFruit(Fruit* fruit, int position)
{
    if(position < 0 || position >= numberOfFruits_)return;
    this->fruits_[position] = fruit;
}

void Reel::changeFruit(Fruit& fruit, int position)
{
    changeFruit(&fruit, position);
}

void Reel::randomShuffle()
{
    //srand(time(NULL));
    //random_shuffle(this->fruits_,this->fruits_+this->numberOfFruits_);
    std::random_device rd;
    std::mt19937 g(rd());
    shuffle(this->fruits_, this->fruits_ + this->numberOfFruits_, g);
}

void Reel::spin(int by)
{
    int newCentral = (this->centralPosition_ + by + numberOfFruits_) % numberOfFruits_;
    //if(newCentral < 1)newCentral=1;
    //if(newCentral >= numberOfFruits_-1)newCentral = numberOfFruits_-2;
    centralPosition_ = newCentral;
}

void Reel::outputReel()
{
    cout << "--------OUTPUT OF REEL----------\n";
    for(int i = 0; i < this->numberOfFruits_; i++)
    {
        if(this->fruits_[i]==nullptr)continue;
        if(i == centralPosition_)cout << "[";
        cout << this->fruits_[i]->getType();
        if(i == centralPosition_)cout << "]";
        cout << endl;
    }
    cout << "--------END OF OUTPUT----------\n";
}

Fruit* Reel::getUpperFruit() const
{
    //if(centralPosition_ < 1 || centralPosition_ >= numberOfFruits_ - 1)return nullptr;
    return this->fruits_[(centralPosition_-1+numberOfFruits_)%numberOfFruits_];
}

Fruit* Reel::getCentralFruit() const
{
    //if(centralPosition_ < 1 || centralPosition_ >= numberOfFruits_ - 1)return nullptr;
    return this->fruits_[centralPosition_];
}

Fruit* Reel::getDownFruit() const
{
    //if(centralPosition_ < 1 || centralPosition_ >= numberOfFruits_ - 1)return nullptr;
    return this->fruits_[(centralPosition_+1+numberOfFruits_)%numberOfFruits_];
}

int Reel::getNumberOfFruitsOnReel() const {return this->numberOfFruits_;}
int Reel::getCentralPosition() const {return centralPosition_;}
