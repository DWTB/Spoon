//
//  Player.swift
//  Spoon
//
//  Created by Ashton Walden on 1/11/17.
//  Copyright © 2017 RelativeDecay. All rights reserved.
//

import Cocoa
class Player: NSObject{
    
    //Declarations
    let food = Food()
    let job = Job()
    let house = House()
    
    var hours: Int = 0
    var money: Int = 1000
    var pay: Int = 0
    var netIncome: Int = 0
    
    let workHours = [20, 25, 35, 40, 45]
    
    //Functions
    func setUp(){
        food.setUp()
        job.setUp()
        house.setUp()
        pay = job.getCost() - food.getCost()
        hours = workHours[food.getLevel()-1]
    }
    
    func update(){
        hours = workHours[food.getLevel()-1]
        
        pay = (job.getCost() * hours)
        
        netIncome = pay - food.getCost()
    }
    
    func nextWeek(){
        update()
        money += pay
    }
    
    //Food
    
    func upgradeFood(){
        food.upgrade()
    }
    
    func downgradeFood(){
        food.downgrade()
    }
    
    func getFoodCost() -> Int{
        return food.getCost()
    }
    
    func getFoodLevel() -> Int{
        return food.getLevel()
    }
    
    func getFoodUpgradePrice() -> Int{
        return food.getUpgradePrice()
    }

    
    //Jobs
    
    func upgradeJob(){
        job.upgrade()
    }
    
    func downgradeJob(){
        job.downgrade()
    }
    
    func getJobCost() -> Int{
        return job.getCost()
    }
    
    func getJobLevel() -> Int{
        return job.getLevel()
    }
    
    func getJobUpgradePrice() -> Int{
        return job.getUpgradePrice()
    }
}
