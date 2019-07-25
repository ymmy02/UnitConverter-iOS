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
    
}

