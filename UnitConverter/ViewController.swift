//
//  ViewController.swift
//  UnitConverter
//
//  Created by Kohei Yamamoto on 2019/07/25.
//  Copyright © 2019 Kohei YAMAMOTO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var ozTextField: UITextField!
    @IBOutlet weak var mlResultLabel: UILabel!
    
    @IBOutlet weak var mlTextField: UITextField!
    @IBOutlet weak var ozResultLabel: UILabel!
    
    @IBOutlet weak var lbTextField: UITextField!
    @IBOutlet weak var gResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: Actions
    @IBAction func convertOzToMl(_ sender: Any) {
        let oneOz:Float = 29.5735 //ml
        if ozTextField.text != nil {
            if let oz:Float = Float(ozTextField.text!) {
                let ml = oz*oneOz
                mlResultLabel.text = String(ml)
            } else {
                mlResultLabel.text = "NA"
            }
        } else {
            mlResultLabel.text = "NA"
        }
    }
    
    @IBAction func convertMltoOz(_ sender: Any) {
        let oneMl:Float = 0.033814 //oz
        if mlTextField.text != nil {
            if let ml:Float = Float(mlTextField.text!) {
                let oz = ml*oneMl
                ozResultLabel.text = String(oz)
            } else {
                ozResultLabel.text = "NA"
            }
        } else {
            mlResultLabel.text = "NA"
        }
    }
    
    @IBAction func convertLbtoG(_ sender: Any) {
        let oneLb:Float = 453.592 //g
        if lbTextField.text != nil {
            if let lb:Float = Float(lbTextField.text!) {
                let gram = lb*oneLb
                gResultLabel.text = String(gram)
            } else {
                gResultLabel.text = "NA"
            }
        } else {
            gResultLabel.text = "NA"
        }
    }
    
}

