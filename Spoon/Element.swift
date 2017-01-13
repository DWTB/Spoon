//
//  Element.swift
//  Spoon
//
//  Created by Ashton Walden on 1/13/17.
//  Copyright © 2017 RelativeDecay. All rights reserved.
//

import Cocoa

class Element: NSObject {
    
    //Declarations
    var Level: Int = 1
    
    var Costs = [0, 0, 0, 0, 0] //How much money you get/dont get
    var Upgrades = [0, 0, 0, 0, 0] //How much upgrades cost

    
    func upgrade() {
        Level += 1
    }
    
    func downgrade(){
        Level -= 1
    }
    
    func getCost() -> Int{
        return Costs[Level-1]
    }
    
    func getLevel() -> Int{
        return Level
    }
    
    func getUpgradePrice() -> Int{
        return Upgrades[Level-1]
    }
    
    func setUp(){}
}
