//
//  QuizViewController.swift
//  Fetch
//
//  Created by Kristy Tan on 5/9/17.
//  Copyright © 2017 Kristy Tan. All rights reserved.
//

import UIKit

var name: String = ""

class QuizViewController: UIViewController {
    
    //properties
    @IBOutlet weak var NameField: UITextField!
    
    @IBAction func ContinueButton(_ sender: UIButton) {
        
        name = NameField.text!
        
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
