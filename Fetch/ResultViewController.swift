//
//  ResultViewController.swift
//  Fetch
//
//  Created by Kristy Tan on 5/3/17.
//  Copyright © 2017 Kristy Tan. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var ProfileButton: UIButton!
  
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var bottomImage: UIImageView!
    @IBOutlet weak var shoesImage: UIImageView!
    
    var elegantTops = ["elegantShirt.jpg","ruffleTop.jpg","paisleyTank.jpeg"]
    var casualTops = ["girlyTee.jpg", "stripedTee.jpg", "summerFloralTop.jpg"]
    
    
       override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showPopup(_ sender: AnyObject) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tablePopUpID") as! PopUpTableViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove( toParentViewController: self)
        
    }
    
    @IBAction func swipeR(sender: UISwipeGestureRecognizer) {
        self.topImage.image = UIImage(named:"elegantShirt.jpg")
//        viewDidLoad()
//        self.view.backgroundColor = UIColor.red
    }
    
    @IBAction func swipeL(_ sender: UISwipeGestureRecognizer) {
        self.topImage.image = UIImage(named:"elegantShirt.jpg")
    }
//    @IBAction func test(_ sender: UISwipeGestureRecognizer) {
//        self.view.backgroundColor = UIColor.red
//    }
}

