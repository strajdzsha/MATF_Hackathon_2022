/****************************************************************************
 Copyright (c) 2017-2018 Xiamen Yaji Software Co., Ltd.
 
 http://www.cocos2d-x.org
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 ****************************************************************************/

#include "HelloWorldScene.h"
//#include "Fruit.hpp"

USING_NS_CC;

string getFileNameByType(Fruit* fruit)
{
    //if (fruit == nullptr)exit(1234);
    if (fruit->getType() == "Fruit1") return "lemon.png";
    else if (fruit->getType() == "Fruit2") return "cherry.png";
    else if (fruit->getType() == "Fruit3") return "grapes.png";
    else if (fruit->getType() == "Fruit4") return "orange.png";
    else if (fruit->getType() == "Fruit5") return "lemon.png";
    else if (fruit->getType() == "FruitS") return "lemon.png";//zameniti
    return "seven.png";
}

Sprite* getSpriteByType(Fruit* fruit)
{
    /*if (fruit->getType() == "Fruit1") return Sprite::create("lemon.png");
    else if (fruit->getType() == "Fruit2") return Sprite::create("cherry.png");
    else if (fruit->getType() == "Fruit3") return Sprite::create("orange.png");
    else if (fruit->getType() == "Fruit4") return Sprite::create("grapes.png");
    else if (fruit->getType() == "Fruit5") return Sprite::create("watermelon.png");
    else if (fruit->getType() == "FruitS") return Sprite::create("seven.png");
    return nullptr;*/
    return Sprite::create(getFileNameByType(fruit));

}

void HelloWorld::updateGridWrapper(HelloWorld* helloWorld)
{
    if (helloWorld)helloWorld->updateGridThread();
}

void HelloWorld::makeUpdateGridThread()
{
    new thread(updateGridWrapper, this);
}

void HelloWorld::updateGridThread()
{
    while (true)
    {
        SlotMachine::busyWait(0.2);
        //this_thread::sleep_for(200);
        //this_thread::sleep_for(200*1000);
        updateGrid();
    }
}

void HelloWorld::drawGrid()
{
    auto visibleSize = Director::getInstance()->getVisibleSize();
    Vec2 origin = Director::getInstance()->getVisibleOrigin();
    int marginX = visibleSize.width / 8;
    int marginY = visibleSize.height / 8;
    Reel** reels = this->slotMachine->getReels();
    int spriteWidth = (visibleSize.width - 2 * marginX) / 5;
    int spriteHeight = (visibleSize.height - 2 * marginY) / 3;
    for (int i = 0; i < this->slotMachine->getNumberOfReels(); i++)
    {

        Reel* reel = reels[i];
        Fruit* fu = reel->getUpperFruit();
        Sprite* su = getSpriteByType(fu);
        su->setContentSize(Size(spriteWidth, spriteHeight));
        su->setAnchorPoint(Vec2(0, 0));
        su->setPosition(Vec2(marginX + i * spriteWidth, marginY + spriteHeight * 2));
        this->addChild(su);

        Fruit* fc = reel->getCentralFruit();
        Sprite* sc = getSpriteByType(fc);
        sc->setContentSize(Size(spriteWidth, spriteHeight));
        sc->setAnchorPoint(Vec2(0, 0));
        sc->setPosition(Vec2(marginX + i * spriteWidth, marginY + spriteHeight));
        this->addChild(sc);

        Fruit* fd = reel->getDownFruit();
        Sprite* sd = getSpriteByType(fd);
        sd->setContentSize(Size(spriteWidth, spriteHeight));
        sd->setAnchorPoint(Vec2(0, 0));
        sd->setPosition(Vec2(marginX + i * spriteWidth, marginY));
        this->addChild(sd);

        sprites[i][0] = su;
        sprites[i][1] = sc;
        sprites[i][2] = sd;
    }
}

void HelloWorld::updateGrid()
{
    auto visibleSize = Director::getInstance()->getVisibleSize();
    Vec2 origin = Director::getInstance()->getVisibleOrigin();
    int marginX = visibleSize.width / 8;
    int marginY = visibleSize.height / 8;
    int spriteWidth = (visibleSize.width - 2 * marginX) / 5;
    int spriteHeight = (visibleSize.height - 2 * marginY) / 3;
    Reel** reels = this->slotMachine->getReels();
    for (int i = 0; i < this->slotMachine->getNumberOfReels(); i++)
    {
        Reel* reel = reels[i];
        sprites[i][0]->setTexture(getFileNameByType(reel->getUpperFruit()));
        sprites[i][0]->setContentSize(Size(spriteWidth, spriteHeight));
        sprites[i][0]->setAnchorPoint(Vec2(0, 0));

        sprites[i][1]->setTexture(getFileNameByType(reel->getCentralFruit()));
        sprites[i][1]->setContentSize(Size(spriteWidth, spriteHeight));
        sprites[i][1]->setAnchorPoint(Vec2(0, 0));

        sprites[i][2]->setTexture(getFileNameByType(reel->getDownFruit()));
        sprites[i][2]->setContentSize(Size(spriteWidth, spriteHeight));
        sprites[i][2]->setAnchorPoint(Vec2(0, 0));
    }
}

Scene* HelloWorld::createScene()
{
    return HelloWorld::create();
}

// Print useful error message instead of segfaulting when files are not there.
static void problemLoading(const char* filename)
{
    printf("Error while loading: %s\n", filename);
    printf("Depending on how you compiled you might have to add 'Resources/' in front of filenames in HelloWorldScene.cpp\n");
}

// on "init" you need to initialize your instance
bool HelloWorld::init()
{
    //////////////////////////////
    // 1. super init first
    if ( !Scene::init() )
    {
        return false;
    }
    
    //<<<><><><><><><><><>MY TEST CODE<><><><><><><><><><><><><>
    
    //Test::main();
    //Test::main();
    this->slotMachine = Test::makeSlotMachine();
    

    /*
    cout << "~~~~~~~~~~~~~~~~~~~HELLO FROM HELLOWORLDSCENE~~~~~~~~~~~~~~~~~~\n";
    slotMachine->spinIt();
    SlotMachine::busyWait(2.0);
    slotMachine->spinStop();
    cout << "WON: " << slotMachine->calculateWin() << endl;
    cout << "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n";
     */
    
    //<<<><><><><><><><><>MY TEST CODE<><><><><><><><><><><><><>

    auto visibleSize = Director::getInstance()->getVisibleSize();
    Vec2 origin = Director::getInstance()->getVisibleOrigin();
    int marginX = visibleSize.width / 8;
    int marginY = visibleSize.height / 8;

   /*auto bg = Sprite::create("bgnd.png");
    this->addChild(bg);*/
    
    Test::testRTP();
    
    // 3. add your codes below...

    //user
    usr.loadUser();
    
    auto button = ui::Button::create();
    button->setTitleText("SPIN");
    button->setTitleFontSize(48);
    button->setTitleColor(Color3B(255, 255, 255));
    //button->setpos
    button->Node::setPosition(visibleSize.width / 2 + origin.x, marginY / 2);
    //bool spin = true;
    this->spin=true;
    button->addTouchEventListener([&](Ref* sender, Widget::TouchEventType type){
            switch (type)
            {
                    case ui::Widget::TouchEventType::BEGAN:
                            break;
                    case ui::Widget::TouchEventType::ENDED:
                            //std::cout << "Button 1 clicked" << std::endl;
                            if(this->spin)
                            {
                                if(this->usr.getCoins() < betAmount)return;
                                slotMachine->outputReels();
                                slotMachine->spinIt();
                                ((Button*)sender)->setTitleText("STOP");
                                cout << "~~~~~~~~~~BEGINING";
                                usr.changeCoins(-betAmount);
                                this->bettedAmount = this->betAmount;
                                coinsLabel->setString("Coins: " + std::to_string(usr.getCoins()));
                            }
                            else
                            {
                                slotMachine->spinStop();
                                ((Button*)sender)->setTitleText("SPIN");
                                cout << "FROM GAME::: WON:" << slotMachine->calculateWin() << endl;
                                slotMachine->outputReels();
                                usr.changeCoins(slotMachine->calculateWin()/1000.0 * this->bettedAmount);
                                coinsLabel->setString("Coins: " + std::to_string(usr.getCoins()));
                            }
                            this->spin=!this->spin;
                            break;
                    default:
                            break;
            }
    });
    this->addChild(button);

    //coins
    coinsLabel = Label::createWithSystemFont("Coins: " + std::to_string(usr.getCoins()), "Helvetica", 30.0f);
    coinsLabel->setColor(Color3B::WHITE);
    coinsLabel->setPosition(Vec2(marginX, marginY/2));
    coinsLabel->setAlignment(TextHAlignment::LEFT);
    this->addChild(coinsLabel);

    //bet
    betLabel = Label::createWithSystemFont("Bet: " + std::to_string(betAmount), "Helvetica", 30.0f);
    betLabel->setColor(Color3B::WHITE);
    betLabel->setPosition(Vec2(visibleSize.width-3*marginX/2, marginY / 2));
    betLabel->setAlignment(TextHAlignment::LEFT);
    this->addChild(betLabel);

    //plus bet
    plusBet = ui::Button::create();
    plusBet->setTitleText("+");
    plusBet->setTitleFontSize(64);
    plusBet->setTitleColor(Color3B(255, 255, 255));
    plusBet->Node::setPosition(visibleSize.width - marginX / 2, marginY / 2);
    plusBet->addTouchEventListener([&](Ref* sender, Widget::TouchEventType type) {
        switch (type)
        {
        case ui::Widget::TouchEventType::BEGAN:
            break;
        case ui::Widget::TouchEventType::ENDED:
            // increace betAmount
            betAmount += 10;
            if (betAmount > 200) betAmount = 200;
            betLabel->setString("Bet: " + std::to_string(betAmount));
            break;
        default:
            break;
        }
        });
    this->addChild(plusBet);

    //minus bet
    minusBet = ui::Button::create();
    minusBet->setTitleText("-");
    minusBet->setTitleFontSize(64);
    minusBet->setTitleColor(Color3B(255, 255, 255));
    minusBet->Node::setPosition(visibleSize.width - 5 * marginX / 2, marginY / 2);
    minusBet->addTouchEventListener([&](Ref* sender, Widget::TouchEventType type) {
        switch (type)
        {
        case ui::Widget::TouchEventType::BEGAN:
            break;
        case ui::Widget::TouchEventType::ENDED:
            // decrease betAmount
            betAmount -= 10;
            if (betAmount < 20) betAmount = 20;
            betLabel->setString("Bet: " + std::to_string(betAmount));
            break;
        default:
            break;
        }
        });
    this->addChild(minusBet);
    
    drawGrid();

    makeUpdateGridThread();

    return true;
}


void HelloWorld::menuCloseCallback(Ref* pSender)
{
    //Close the cocos2d-x game scene and quit the application
    Director::getInstance()->end();

    /*To navigate back to native iOS screen(if present) without quitting the application  ,do not use Director::getInstance()->end() as given above,instead trigger a custom event created in RootViewController.mm as below*/

    //EventCustom customEndEvent("game_scene_close_event");
    //_eventDispatcher->dispatchEvent(&customEndEvent);


}
