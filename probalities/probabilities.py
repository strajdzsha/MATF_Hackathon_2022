import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import time


start_time = time.time()


class CircularList(list):
    def __getitem__(self, index):
        return super(CircularList, self).__getitem__(index % len(self))


class Reel:
    def __init__(self, fruits_, central_pos_):
        self.n_of_fruits = len(fruits_)
        self.fruits = fruits_
        self.central_pos = central_pos_
        self.fruit_dict = {}
        self.createFruitDict()

    def displayed_fruits(self,  y_display_):
        disp_fruits = []
        for i in range(self.central_pos - y_display_//2, self.central_pos + y_display_//2 + 1):
            disp_fruits.append(self.fruits[i])
        return disp_fruits

    def createFruitDict(self):
        for fruit in self.fruits:
            self.fruit_dict[fruit] = 0
        for fruit in self.fruits:
            self.fruit_dict[fruit] += 1

    def spin(self):
        displacement = np.random.randint(self.n_of_fruits)
        fruits_cpy = self.fruits.copy()
        fruits_cpy = CircularList(fruits_cpy)
        for i in range(self.n_of_fruits):
            self.fruits[i] = fruits_cpy[i + displacement]


class SlotMachine:
    def __init__(self, reels_):
        self.reels = reels_
        self.n_of_reels = len(reels_)

    def dispScreen(self, x_display_, y_display_):
        disp_fruits = [[] for i in range(x_display_)]
        for i in range(self.n_of_reels):
            disp_fruits[i] = self.reels[i].displayed_fruits(y_display)

        #print screen
        for i in range(x_display_):
            for j in range(y_display_):
                print(disp_fruits[j][i], end=' ')
            print('\n')

    def mainLine(self):
        main_line = []
        for reel in reels:
            main_line.append(reel.fruits[reel.central_pos])

        return main_line


def calcProb(comb):
    prob = 1
    for i in range(len(comb)):
        reel = machine.reels[i]
        fruit = comb[i]
        prob *= reel.fruit_dict[fruit]/reel.n_of_fruits

    return prob


def simulateSlot(n_steps, comb):
    n_succ = 0
    for i in range(n_steps):
        for reel in machine.reels:
            reel.spin()
        if machine.mainLine() == comb:
            n_succ += 1
    return n_succ/n_steps


y_display = 3
x_display = 3
fruits = CircularList(['a', 'b', 'c', 'c', 'a', 'b', 'c', 'c'])
fruits1 = CircularList(['b', 'b', 'a', 'a', 'a', 'c', 'b', 'c'])
fruits2 = CircularList(['c', 'a', 'a', 'a', 'b', 'b', 'a', 'b'])
r1 = Reel(fruits, 0)
r2 = Reel(fruits1, 0)
r3 = Reel(fruits2, 0)
r3.spin()
reels = [r1, r2, r3]
machine = SlotMachine(reels)
machine.dispScreen(x_display, y_display)
n_steps = 1000
comb = ['c', 'b', 'c']
print(calcProb(comb))
print(simulateSlot(100000, comb))
print(time.time() - start_time)