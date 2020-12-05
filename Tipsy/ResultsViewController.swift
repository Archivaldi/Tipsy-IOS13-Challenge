//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Artur Markov on 12/4/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var total: String = "0.0"
    var numberOfPeople: Float = 2.0
    var tip: Float = 0.0
    var perPerson: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = String(perPerson)
        settingsLabel.text = "Split between \(Int(numberOfPeople)) people with \(Int(tip))."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
