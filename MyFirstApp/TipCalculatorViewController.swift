//
//  TipCalculatorViewController.swift
//  MyFirstApp
//
//  Created by Shashank Sharma on 11/3/17.
//  Copyright © 2017 Shashank Sharma. All rights reserved.
//

import UIKit

class TipCalculatorViewController: ViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipPercentSegmentControl: UISegmentedControl!
    @IBOutlet weak var tipAmountTextField: UITextField!
    @IBOutlet weak var totalAmountTextField: UITextField!
    
    @IBAction func calculateTipButtonClicked(_ sender: Any) {
        if(billTextField.hasText) {
            var billAmount = (billTextField.text! as NSString).doubleValue
            var tipAmount = 0.0
            
            switch(tipPercentSegmentControl.selectedSegmentIndex) {
            case 0:
                tipAmount = 0.15 * billAmount
            case 1:
                tipAmount = 0.18 * billAmount
            case 2:
                tipAmount = 0.2 * billAmount
            default:
                tipAmount = 0.18 * billAmount
            }
            
            tipAmountTextField.text = "$" + String(format: "%.2f", tipAmount)
            totalAmountTextField.text = "$" + String(format: "%.2f", tipAmount + billAmount)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
