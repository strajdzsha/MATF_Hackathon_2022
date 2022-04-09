//
//  Test.cpp
//  MatHack
//
//  Created by Aleksa on 4/9/22.
//

#include "Test.hpp"
#include "PayLine.hpp"

void Test::main()
{
    Fruit* f[] = {new Fruit1(),new Fruit2(),new Fruit1(),new Fruit2(),new Fruit1(),new Fruit2()};
    Reel* reel = new Reel(6,f);
    reel->randomShuffle();
    cout << "<<<<<<<<<<<<<<<BEFORE SPINS>>>>>>>>>>>>>>\n";
    reel->outputReel();
    reel->spin(3);
    reel->spin(-1);
    cout << "<<<<<<<<<<<<<<<AFTER  SPINS>>>>>>>>>>>>>>\n";
    reel->outputReel();
    cout << "<><><><><>><><><><><<>><><><><><><><><><<\n";
    cout << reel->getUpperFruit()->getType() << endl;
    cout << reel->getCentralFruit()->getType() << endl;
    cout << reel->getDownFruit()->getType() << endl;
    
    //thread t1(foo);
    //t1.join();
    
    //Reel* reels[] = {reel, reel, reel, reel, reel};
    Reel** reels = new Reel*[5];
    for(int i = 0; i < 5; i++)
    {
        reels[i] = new Reel(6,f);
        reels[i]->randomShuffle();
    }
    
    SlotMachine* slotMachine = new SlotMachine(5,reels);
    slotMachine->outputReels();
    
    auto start = high_resolution_clock::now();
    slotMachine->spinIt();
    SlotMachine::busyWait(2.0);
    auto stop = high_resolution_clock::now();
    auto duration = duration_cast<milliseconds>(stop - start);
    cout << "Time taken by function: "
            << duration.count() << " miliseconds" << endl;
    slotMachine->spinStop();
    slotMachine->outputReels();
    
    int positionInReel[] = {-1,-1,-1,-1,-1};
    PayLine* payLine = new PayLine(5,positionInReel);
    cout << "Number of consecutive in first row: " << payLine->findNumberOfConsecutive(slotMachine) << endl;
}
