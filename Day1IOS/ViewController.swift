//
//  ViewController.swift
//  Day1IOS
//
//  Created by Ankita Pabbi on 2019-06-27.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet weak var lblMessage: UILabel!
//    @IBOutlet weak var submitButton: UIButton!
//
//    @IBOutlet weak var welcomeText: UITextField!
//
//    @IBOutlet weak var enterText: UITextField!
//
//    @IBOutlet weak var showText: UILabel!
//
//
//    @IBAction func btnSubmitClick(_ sender: UIButton) {
//       // self.lblMessage.text = "Welcome to IOS Programming..."
////        let str = "Welcome to IOS Programming..."
////        self.lblMessage.text = str
////        self.welcomeText.text = "IOS Class One"
//
//
//        self.showText.text = self.enterText.text
//
//
//
//    }
    
   
    @IBOutlet weak var numberOne: UITextField!
    
    @IBOutlet weak var numberTwo: UITextField!
    
    
    @IBOutlet weak var lblResult: UILabel!

    var theResult = String()
    
    
    @IBAction func addNumbers(_ sender: UIButton) {
        let num1 = Float(self.numberOne.text!)
        let num2 = Float(self.numberTwo.text!)
        self.lblResult.text = String(num1! + num2!)
//        self.theResult = self.lblResult.text!
//        performSegue(withIdentifier: "add", sender: self)
          let sb = UIStoryboard(name: "Main", bundle: nil)
          let result = sb.instantiateViewController(withIdentifier: "result") as! ResultViewController
          result.actualResult = self.lblResult.text
          //print(result.actualResult)
          self.navigationController?.pushViewController(result,animated: true)
        
        
        
    }
    @IBAction func subtactNumbers(_ sender: UIButton) {
        let num1 = Float(self.numberOne.text!)
        let num2 = Float(self.numberTwo.text!)
        
        self.lblResult.text = String(num1! - num2!)
//        self.theResult = self.lblResult.text!
//        performSegue(withIdentifier: "calculate", sender: self)
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let result = sb.instantiateViewController(withIdentifier: "result") as! ResultViewController
        //result.lblMainResult.text! = self.lblResult.text!

        result.actualResult = self.lblResult.text
        //print(result.actualResult)

        self.navigationController?.pushViewController(result,animated: true)
    }
    @IBAction func multiplyNumbers(_ sender: UIButton) {
        let num1 = Float(self.numberOne.text!)
        let num2 = Float(self.numberTwo.text!)
        
        self.lblResult.text = String(num1! * num2!)
//        self.theResult = self.lblResult.text!
//        performSegue(withIdentifier: "calculate", sender: self)
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let result = sb.instantiateViewController(withIdentifier: "result") as! ResultViewController
        //result.lblMainResult.text! = self.lblResult.text!
        
        result.actualResult = self.lblResult.text
        //print(result.actualResult)
        
        self.navigationController?.pushViewController(result,animated: true)

    }
    
    @IBAction func divideNumbers(_ sender: UIButton) {
        let num1 = Float(self.numberOne.text!)
        let num2 = Float(self.numberTwo.text!)
        
        self.lblResult.text = String(num1! / num2!)
//        self.theResult = self.lblResult.text!
//        performSegue(withIdentifier: "calculate", sender: self)
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let result = sb.instantiateViewController(withIdentifier: "result") as! ResultViewController
       
        result.actualResult = self.lblResult.text
        //print(result.actualResult)
        
        self.navigationController?.pushViewController(result,animated: true)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Calculator"
        // Do any additional setup after loading the view.
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
////        var vc = segue.destination as? ResultViewController
////        vc?.actualResult = self.theResult
//        if segue.identifier == "add"{
//            let vc = segue.destination as? ResultViewController
//            vc?.actualResult = self.theResult
//        }
//    }

}

