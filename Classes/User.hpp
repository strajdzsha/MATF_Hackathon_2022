//
//  User.hpp
//  MatHack
//
//  Created by Aleksa on 4/10/22.
//

#ifndef User_hpp
#define User_hpp

#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string>

using namespace std;

class User
{
    int coins_;
    string username_;
    string filePath="user.data";
public:
    int getCoins() const;
    string getUsername() const;
    void setCoins(int coins);
    void changeCoins(int by);
    void saveUser();
    void loadUser();
};

#endif /* User_hpp */
