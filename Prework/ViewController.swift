//
//  ViewController.swift
//  Prework
//
//  Created by Thi Le on 7/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTipSlider(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tip = Double(tipControl.value)
        
        let total = bill + (bill * (tip / 100))
        tipAmountLabel.text = String(format: "%.2f%%", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

