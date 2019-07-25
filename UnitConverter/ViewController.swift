//
//  ViewController.swift
//  UnitConverter
//
//  Created by Kohei Yamamoto on 2019/07/25.
//  Copyright © 2019 Kohei YAMAMOTO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: oz to ml converter
    @IBOutlet weak var ozTextField: UITextField!
    @IBOutlet weak var mlResultLabel: UILabel!
    
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
    
    // MARK: ml to oz converter
    @IBOutlet weak var mlTextField: UITextField!
    @IBOutlet weak var ozResultLabel: UILabel!
    
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
    
    // MARK: lb to g converter
    @IBOutlet weak var lbTextField: UITextField!
    @IBOutlet weak var gResultLabel: UILabel!
    
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
    
    // MARK: g to lb converter
    @IBOutlet weak var gTextField: UITextField!
    @IBOutlet weak var lbResultLabel: UILabel!
    
    @IBAction func convertGtoLB(_ sender: Any) {
        let oneGram:Float = 0.00220462 //lb
        if gTextField.text != nil {
            if let gram:Float = Float(gTextField.text!) {
                let lb = gram*oneGram
                lbResultLabel.text = String(lb)
            } else {
                lbResultLabel.text = "NA"
            }
        } else {
            lbResultLabel.text = "NA"
        }
    }
}

