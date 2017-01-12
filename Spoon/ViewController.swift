//
//  ViewController.swift
//  Spoon
//
//  Created by Ashton Walden on 1/11/17.
//  Copyright © 2017 RelativeDecay. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    //Declarations
    let player = Player()
    @IBOutlet weak var moneyLabel: NSTextField!
    
    @IBOutlet weak var foodLevel: NSTextField!
    @IBOutlet weak var jobLevel: NSTextField!
    
    @IBOutlet weak var foodPrice: NSTextField!
    @IBOutlet weak var jobPrice: NSTextField!
    
    @IBOutlet weak var foodIncome: NSTextField!
    @IBOutlet weak var jobIncome: NSTextField!
    
    
    @IBOutlet weak var workHours: NSTextField!
    
    @IBOutlet weak var weekSalary: NSTextField!
    @IBOutlet weak var weekCost: NSTextField!
    @IBOutlet weak var netIncome: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        player.model()
        updateLabels()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    //Button Stuff
    
    @IBAction func nextWeek(_ sender: NSButton){
        player.nextWeek()
        updateLabels()
    }
    
    @IBAction func upgradeFood(_ sender: NSButton){
        player.upgradeFood()
        updateLabels()
    }
    
    @IBAction func upgradeJob(_ sender: NSButton){
        player.upgradeJob()
        updateLabels()
    }
    
    func updateLabels(){
        
        //Levels
        moneyLabel.stringValue = ("$ \(String(player.Money))")
        foodLevel.stringValue = String(player.foodLevel)
        jobLevel.stringValue = String(player.jobLevel)
        
        //Prices
        foodPrice.stringValue = "$\(String(player.currentFoodPrice))"
        jobPrice.stringValue = "$\(String(player.currentJobPrice))"
        
        //Incomes
        foodIncome.stringValue = "-$\(String(player.foodCost))"
        jobIncome.stringValue = "$\(String(player.hourlyPay))"
        
        
        //Right Side
        workHours.stringValue = "\(String(player.hours)) Hours"
        weekSalary.stringValue = "$\(String(player.pay))"
        weekCost.stringValue = "-$\(String(player.foodCost))"
        netIncome.stringValue = ("$ \(String(player.income))")
        
        
    }
}

