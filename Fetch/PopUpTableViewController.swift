//
//  PopUpTableViewController.swift
//  Fetch
//
//  Created by APPLE on 5/16/17.
//  Copyright © 2017 Kristy Tan. All rights reserved.
//

import UIKit

class PopUpTableViewController: UITableViewController {

    @IBOutlet weak var cellOne: UITableViewCell!
    @IBOutlet weak var cellTwo: UITableViewCell!
    @IBOutlet weak var cellThree: UITableViewCell!
    @IBOutlet weak var cellFour: UITableViewCell!

    var image1 = UIImage()
    var chosenBool = Bool()
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var seasonLabel: UILabel!
    @IBOutlet weak var userStyle: UILabel!
    @IBOutlet weak var chosenOutfit: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        userName.text = QuizViewController.profile.name
        ageLabel.text = QuizViewController.profile.age
        seasonLabel.text = QuizViewController.profile.season
        userStyle.text = QuizViewController.profile.style

        if chosenBool == true{
        chosenOutfit.image = image1
        }
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 @IBAction func closePopUp(_ sender: Any) {
    
    self.view.removeFromSuperview()
    performSegue(withIdentifier: "goBack", sender: self)
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
