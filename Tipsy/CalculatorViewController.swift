//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        calculatorBrain.total = billTextField.text!
        zeroPctButton.isSelected = false;
        tenPctButton.isSelected = false;
        twentyPctButton.isSelected = false;
        sender.isSelected = true;
        calculatorBrain.pctSelected = Float(sender.currentTitle!.dropLast()) ?? 10.0
        billTextField.endEditing(true)
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        calculatorBrain.people = Int(sender.value)
        splitNumberLabel.text = String(calculatorBrain.people)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let percetage = calculatorBrain.getPct()/100.0
        let numberOfPeople = Float(calculatorBrain.getNumberOfPeople())
        let total = calculatorBrain.getTotal()
        print((total + total*percetage) / numberOfPeople )
    }
}

