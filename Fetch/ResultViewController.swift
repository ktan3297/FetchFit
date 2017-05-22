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
    
    
    @IBOutlet var topTap: UITapGestureRecognizer! = UITapGestureRecognizer(target:self,action: #selector(changeTop))

       override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 
    func changeTop(_sender: UITapGestureRecognizer)
    {
        topImage.image = UIImage(named:"elegantShirt")
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
    
    @IBAction func swipeR(_ sender: Any) {
    }
    
    
    @IBAction func swipeL(_ sender: Any) {
    }
    
}

