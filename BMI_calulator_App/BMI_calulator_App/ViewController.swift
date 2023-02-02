//
//  ViewController.swift
//  BMI_calulator_App
//
//  Created by english on 2022-09-22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtWeight: UITextField!
    @IBOutlet weak var txtHeight: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    func calculateBmi (height : Int, weight : Int ) -> Double{
        
        let bmi = Double(weight/height/height)*10000
        return bmi
    }
    func calulateclassification(bmi : Double) -> String{
        var classification = ""
        if(bmi>18.5){
            classification = "Underweight"
        }
        else if (bmi>18.6 && bmi<24.9){
            classification = "Normal Weight"
        }else if(bmi>25.0 && bmi<29.9){
            classification = "Overweight"
        }else if(bmi>30 && bmi<100){
            classification = "Obesicity"
        }
        else{
            classification = "ERROR! INVALID BMI"
        }
        
        
        return classification
    }
    
    @IBAction func btnCalculate(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblResult.isHidden = true
    }


}

