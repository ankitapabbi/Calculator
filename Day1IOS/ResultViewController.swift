//
//  ResultViewController.swift
//  Day1IOS
//
//  Created by Ankita Pabbi on 2019-07-07.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var actualResult: String?
    
    @IBOutlet weak var lblMainResult: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  self.title = "Computation"
        if let e = actualResult{
            print(e)
            self.lblMainResult.text = "Result is : \(e)"
        }
        
        // Do any additional setup after loading the view.
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
