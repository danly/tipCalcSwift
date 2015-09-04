//
//  ViewController.swift
//  tipCalc
//
//  Created by Daniel Gih on 9/3/15.
//  Copyright (c) 2015 danlyG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var segControl: UISegmentedControl!
    @IBOutlet weak var sliderControl: UISlider!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBAction func newTipPercentageSelected(sender: AnyObject) {
        calcTip()
    }
    
    @IBAction func billAmountAdded(sender: AnyObject) {
        calcTip()
        
    }
    
    func calcTip() {
        var index = segControl.selectedSegmentIndex
        var billAmount = (billTextField.text as NSString).doubleValue
        var percentage = 0.0
        switch index {
        case 0:
            percentage = 0.15
        case 1:
            percentage = 0.18
        case 2:
            percentage = 0.20
        default:
            println("nothing")
        }
        var tipAmount = billAmount * percentage
        tipLabel.text = String(format: "$%.2f", tipAmount)
        totalLabel.text = String(format: "$%.2f", billAmount + tipAmount)
    }

}

