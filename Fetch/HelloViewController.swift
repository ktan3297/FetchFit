//
//  HelloViewController.swift
//  Fetch
//
//  Created by Kristy Tan on 5/11/17.
//  Copyright © 2017 Kristy Tan. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {

    @IBOutlet weak var HelloName: UILabel!
    var receivedPhrase = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        HelloName.text = receivedPhrase

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
