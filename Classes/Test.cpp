//
//  Test.cpp
//  MatHack
//
//  Created by Aleksa on 4/9/22.
//

#include "Test.hpp"
#include "PayLine.hpp"
#include "Combination.hpp"

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
    
    PayLine* payLines[] = {new PayLine(5, new int[]{0,0,0,0,0}), new PayLine(5, new int[]{-1,-1,-1,-1,-1}), new PayLine(5, new int[]{1,1,1,1,1})};
    Combination* combinations[] = { new Combination("Fruit1",5, new int[]{0,0,5,10,15}), new Combination("Fruit2",5, new int[]{0,0,50,100,150}) };
    
    SlotMachine* slotMachine = new SlotMachine(5, reels, payLines, combinations, 3, 2);
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
    cout << "Type of Pay Line " << payLine->getType(slotMachine) << endl;
    
    Combination* comb = new Combination("Fruit1", 5, new int[]{0,0,5,10,20});
    if(payLine->getType(slotMachine) == comb->getType())
    {
        cout << "Won: " << comb->getAward(payLine->findNumberOfConsecutive(slotMachine)) << endl;
    }
    else {cout << "No winnings" << endl;}
    
    cout << "Won money: " << slotMachine->calculateWin() << endl;
    
    cout << "!_!_!_!__!!_----!__!_!_!__!!_-__-!__!_!_-!_!-!_!\n";
    cout << "New test begining\n";
    SlotMachine* slotMachine2 = makeSlotMachine();
    slotMachine2->outputReels();
    slotMachine2->spinIt();
    SlotMachine::busyWait(3.0);
    slotMachine2->spinStop();
    slotMachine2->outputReels();
    cout << "WON:"
     << slotMachine2->calculateWin() << endl;
    
}

SlotMachine* Test::makeSlotMachine()
{
    //Combination(string type, int numberOfReels, int* awards);
    //SlotMachine(int numberOfReels, Reel** reels, PayLine** payLines, Combination** combinations, int numberOfPayLines, int numberOfCombinations);
    //Reel(int numberOfFruits, Fruit** fruits);
    //PayLine(int numberOfReels, int* positionInReel);
    int numberOfReels = 5;
    /*
    Fruit** fruitsForReel1 = new Fruit*[]{new Fruit1(), new Fruit1(), new Fruit2(), new Fruit1(), new Fruit2(), new Fruit1()};
    Fruit** fruitsForReel2 = new Fruit*[]{new Fruit2(), new Fruit2(), new Fruit2(), new Fruit1(), new Fruit1()};
    Fruit** fruitsForReel3 = new Fruit*[]{new Fruit1(), new Fruit1(), new Fruit2(), new Fruit1(), new Fruit2()};
    Fruit** fruitsForReel4 = new Fruit*[]{new Fruit2(), new Fruit2(), new Fruit2(), new Fruit1(), new Fruit2()};
    Fruit** fruitsForReel5 = new Fruit*[]{new Fruit1(), new Fruit1(), new Fruit2(), new Fruit1(), new Fruit2(), new Fruit2(), new Fruit2()};
     */
    
    Fruit** fruitsForReel1 = Fruit::makeFruitArray(5, 4, 5, 5, 6, 1);
    Fruit** fruitsForReel2 = Fruit::makeFruitArray(4, 4, 3, 5, 5, 1);
    Fruit** fruitsForReel3 = Fruit::makeFruitArray(5, 3, 5, 4, 5, 1);
    Fruit** fruitsForReel4 = Fruit::makeFruitArray(3, 4, 5, 5, 4, 1);
    Fruit** fruitsForReel5 = Fruit::makeFruitArray(6, 4, 5, 5, 4, 1);
    
    int numberOfFruitsForReel1 = 5 + 4 + 5 + 5 + 6 + 1;
    int numberOfFruitsForReel2 = 4 + 4 + 3 + 5 + 5 + 1;
    int numberOfFruitsForReel3 = 5 + 3 + 5 + 4 + 5 + 1;
    int numberOfFruitsForReel4 = 3 + 4 + 5 + 5 + 4 + 1;
    int numberOfFruitsForReel5 = 6 + 4 + 5 + 5 + 4 + 1;
    
    Reel* reel1 = new Reel(numberOfFruitsForReel1, fruitsForReel1);
    Reel* reel2 = new Reel(numberOfFruitsForReel2, fruitsForReel2);
    Reel* reel3 = new Reel(numberOfFruitsForReel3, fruitsForReel3);
    Reel* reel4 = new Reel(numberOfFruitsForReel4, fruitsForReel4);
    Reel* reel5 = new Reel(numberOfFruitsForReel5, fruitsForReel5);
    
    reel1->randomShuffle();
    reel2->randomShuffle();
    reel3->randomShuffle();
    reel4->randomShuffle();
    reel5->randomShuffle();
    
    Reel** reels = new Reel*[]{reel1, reel2, reel3, reel4, reel5};
    
    int numberOfPayLines = 15;
    /*
    PayLine* payLine1 = new PayLine(numberOfReels, new int[] {-1,-1,-1,-1,-1});
    PayLine* payLine2 = new PayLine(numberOfReels, new int[] {1,1,1,1,1});
    PayLine* payLine3 = new PayLine(numberOfReels, new int[] {0,0,0,0,0});
    PayLine* payLine4 = new PayLine(numberOfReels, new int[] {0,1,0,1,0});
    PayLine* payLine5 = new PayLine(numberOfReels, new int[] {0,1,1,1,0});
    PayLine* payLine6 = new PayLine(numberOfReels, new int[] {-1,0,0,0,0});
    PayLine* payLine7 = new PayLine(numberOfReels, new int[] {-1,0,0,0,1});
    PayLine* payLine8 = new PayLine(numberOfReels, new int[] {-1,0,-1,0,0});
    PayLine* payLine9 = new PayLine(numberOfReels, new int[] {-1,1,0,0,0});
    PayLine* payLine10 = new PayLine(numberOfReels, new int[] {-1,-1,0,1,0});
    PayLine* payLine11 = new PayLine(numberOfReels, new int[] {-1,-1,1,1,0});
    PayLine* payLine12 = new PayLine(numberOfReels, new int[] {0,0,1,0,0});
    PayLine* payLine13 = new PayLine(numberOfReels, new int[] {0,0,0,1,0});
    PayLine* payLine14 = new PayLine(numberOfReels, new int[] {0,1,0,0,0});
    PayLine* payLine15 = new PayLine(numberOfReels, new int[] {1,1,-1,-1,0});
     */
    PayLine* payLine1 = new PayLine(numberOfReels, new int[] {-1,-1,-1,-1,-1});//
    PayLine* payLine2 = new PayLine(numberOfReels, new int[] {0,0,0,0,0});//
    PayLine* payLine3 = new PayLine(numberOfReels, new int[] {1,1,1,1,1});//
    PayLine* payLine4 = new PayLine(numberOfReels, new int[] {1,0,1,0,1});//
    PayLine* payLine5 = new PayLine(numberOfReels, new int[] {-1,0,-1,0,-1});//
    PayLine* payLine6 = new PayLine(numberOfReels, new int[] {1,1,0,1,1});//
    PayLine* payLine7 = new PayLine(numberOfReels, new int[] {0,0,-1,-1,-1});//
    PayLine* payLine8 = new PayLine(numberOfReels, new int[] {1,-1,-1,0,-1});
    PayLine* payLine9 = new PayLine(numberOfReels, new int[] {1,1,-1,1,-1});
    PayLine* payLine10 = new PayLine(numberOfReels, new int[] {-1,1,1,1,-1});
    PayLine* payLine11 = new PayLine(numberOfReels, new int[] {-1,-1,0,1,0});
    PayLine* payLine12 = new PayLine(numberOfReels, new int[] {-1,0,1,1,0});
    PayLine* payLine13 = new PayLine(numberOfReels, new int[] {0,-1,1,1,1});
    PayLine* payLine14 = new PayLine(numberOfReels, new int[] {0,1,-1,0,0});
    PayLine* payLine15 = new PayLine(numberOfReels, new int[] {-1,0,0,0,0});
    
    PayLine** payLines = new PayLine*[]{payLine1,payLine2,payLine3,payLine4,payLine5,payLine6,payLine7,payLine8,payLine9,payLine10,payLine11,payLine12,payLine13,payLine14,payLine15};
    
    int numberOfCombinations = 6;
    Combination* combination1 = new Combination("Fruit1", numberOfReels, new int[] {0,0,280,800,1700});
    Combination* combination2 = new Combination("Fruit2", numberOfReels, new int[] {0,0,300,1000,1400});
    Combination* combination3 = new Combination("Fruit3", numberOfReels, new int[] {0,0,600,1200,1800});
    Combination* combination4 = new Combination("Fruit4", numberOfReels, new int[] {0,0,400,850,1200});
    Combination* combination5 = new Combination("Fruit5", numberOfReels, new int[] {0,0,110,210,300});
    Combination* combinationS = new Combination("FruitS", numberOfReels, new int[] {0,0,5000,11000,17000});
    
    Combination** combinations = new Combination*[]{combination1,combination2,combination3,combination4,combination5,combinationS};
    
    //SlotMachine(int numberOfReels, Reel** reels, PayLine** payLines, Combination** combinations, int numberOfPayLines, int numberOfCombinations);
    SlotMachine* slotMachine = new SlotMachine(numberOfReels, reels, payLines, combinations, numberOfPayLines, numberOfCombinations);
    
    return slotMachine;
}

void Test::testRTP()
{
    SlotMachine* slotMachine = Test::makeSlotMachine();
    int numberOfTests = 1e6;
    double s = 0;
    for(int i = 0; i < numberOfTests; i++)
    {
        slotMachine->spin();
        s += slotMachine->calculateWin();
    }
    cout << s / ((long long)numberOfTests * 1000) << endl;
    delete slotMachine;
}
