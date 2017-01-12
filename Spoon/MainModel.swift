//
//  MainModel.swift
//  Spoon
//
//  Created by Ashton Walden on 1/11/17.
//  Copyright © 2017 RelativeDecay. All rights reserved.
//

import Cocoa

class MainModel: NSObject {
    
    //Declarations
    var foodLevel: Int = 1
    var jobLevel: Int = 1
    var hours: Int = 1
    
    var foodCost: Int = 1
    var hourlyPay: Int = 1
    var pay: Int = 1
    
    var income: Int = 1
    
    var currentFoodPrice: Int = 1
    var currentJobPrice: Int = 1
    
    
    
    //Arrays
    let foodCosts = [294, 420, 525, 630, 735]
    let workHours = [20, 25, 35, 40, 45]
    let incomes = [8, 10, 12, 15, 20]
    
    let upgradeFoodPrice = [15, 20, 30, 40, 50]
    let upgradeJobPrice = [50, 100, 150, 200, 250]

    
    func model(){
        //Food
        foodCost = foodCosts[foodLevel-1]
        
        //Hours
        hours = workHours[foodLevel-1]
        
        //Pay
        hourlyPay = incomes[jobLevel-1]
        
        //Job
        pay = hourlyPay * hours
        
        //Net Income
        income = pay - foodCost
        
        //Prices
        currentJobPrice = upgradeJobPrice[jobLevel-1]
        currentFoodPrice = upgradeFoodPrice[foodLevel-1]
        
    }
    
    func runModel() -> Int{
        model()
        return income
    }

}
