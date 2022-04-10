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

    // 3. add your codes below...
    
    auto button = ui::Button::create();
    button->setTitleText("SPIN");
    button->setTitleFontSize(16);
    button->setTitleColor(Color3B(255, 255, 255));
    //button->setpos
    button->Node::setPosition(visibleSize.width / 2 + origin.x, visibleSize.height / 2 + origin.y);
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
                                slotMachine->outputReels();
                                slotMachine->spinIt();
                                ((Button*)sender)->setTitleText("STOP");
                                cout << "~~~~~~~~~~BEGINING";
                            }
                            else
                            {
                                slotMachine->spinStop();
                                ((Button*)sender)->setTitleText("SPIN");
                                cout << "FROM GAME::: WON:" << slotMachine->calculateWin() << endl;
                                slotMachine->outputReels();
                            }
                            this->spin=!this->spin;
                            break;
                    default:
                            break;
            }
    });
    this->addChild(button);
    
    
    
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
