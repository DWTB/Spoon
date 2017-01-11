//
//  Player.swift
//  Spoon
//
//  Created by Ashton Walden on 1/11/17.
//  Copyright © 2017 RelativeDecay. All rights reserved.
//

import Cocoa

class Player: NSObject {
    
    //Declarations
    var Money: Int = 100000
    
    func setMoney(value: Int){
        Money = value
    }
    
    func addMoney(value: Int){
        Money =+ value
    }
    
    func getMoney() -> Int{
        return Money
    }

}
