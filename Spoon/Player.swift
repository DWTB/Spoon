//
//  Player.swift
//  Spoon
//
//  Created by Ashton Walden on 1/11/17.
//  Copyright © 2017 RelativeDecay. All rights reserved.
//

import Cocoa
class Player: MainModel {
    
    //Declarations
    var Money: Int = 1000
    
    
    
    func nextWeek(){
        Money += runModel()
    }
    
    func upgradeFood(){
        if Money > upgradeFoodPrice[foodLevel-1]{
            Money -= upgradeFoodPrice[foodLevel-1]
            foodLevel += 1
        }
        model()
    }
    
    func upgradeJob(){
        if Money > upgradeJobPrice[jobLevel-1]{
            Money -= upgradeJobPrice[jobLevel-1]
            jobLevel += 1
        }
        model()
    }
}
