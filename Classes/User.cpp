//
//  User.cpp
//  MatHack
//
//  Created by Aleksa on 4/10/22.
//

#include "User.hpp"

int User::getCoins() const {return this->coins_;}

string User::getUsername() const {return this->username_;}

void User::setCoins(int coins) {this->coins_ = coins;}

void User::changeCoins(int by) {this->coins_ += by;}

void User::saveUser()
{
    ofstream file(this->filePath);
    if(file.is_open())
    {
        file << this->coins_ << endl;
        file << this->username_ << endl;
        cout << "SAVING " << coins_ << " " << username_ << endl;
        file.close();
    }
    else
    {
        cout << "[ERROR] Couldn't save user file\n";
    }
}

void User::loadUser()
{
    ifstream file(this->filePath);
    if(file.is_open())
    {
        string line;
        if(getline(file,line))
        {
            coins_ = stoi(line);
            if(getline(file,line))
            {
                username_ = line;
            }
            else
            {
                username_ = "User";
            }
        }
        else
        {
            coins_ = 1000;
            username_ = "User";
        }
        cout << "LOADED " << coins_ << " " << username_ << endl;
        file.close();
    }
    else
    {
        coins_ = 1000;
        username_ = "User";
        cout << "[ERROR] Couldn't open user file. Assigning default values\n";
    }
}
