//
//  ViewController.swift
//  Food
//
//  Created by Louie Serrano on 6/16/18.
//  Copyright © 2018 L.A.L.I. LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var todaysChoiceLabel:UILabel!
    @IBOutlet weak var foodTypeLabel:UILabel!
    @IBOutlet weak var hintOfLabel: UILabel!
    @IBOutlet weak var secondFoodTypeLabel: UILabel!
    
    @IBOutlet weak var chooseFoodButton:UIButton!
    
    let foodTypes = ["American", "Italian", "Japanese", "Chinese", "Mexican"]
    
    @IBAction func didTapChooseFood() {
        print("tapped choose")
        
        todaysChoiceLabel.isHidden = false
        foodTypeLabel.isHidden = false
        hintOfLabel.isHidden = false
        secondFoodTypeLabel.isHidden = false
        
        chooseFoodButton.setTitle("Choose Again", for: .normal)
        
        let uintFoodTypesCount = UInt32(foodTypes.count)
        let randomNumber = arc4random_uniform(UInt32(foodTypes.count))
        let intRandomNumber = Int(randomNumber)
        
        foodTypeLabel.text = foodTypes[intRandomNumber]
        
        var randomNumber2 = arc4random_uniform(uintFoodTypesCount)
            
        while randomNumber2 == randomNumber {
            randomNumber2 = arc4random_uniform(uintFoodTypesCount)
        }
        
        let uintFoodTypesCount2 = UInt32(foodTypes.count)
        let randomNumber = arc4random_uniform(UInt32(foodTypes.count))
        let intRandomNumber = Int(randomNumber)
        
        
        secondFoodTypeLabel.text = foodTypes[intRandomNumber]
        
        
    }




}
