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
  
    @IBOutlet weak var outfit: UIImageView!
    var outfits = [[String]]()
    var savedOutfit = UIImage()
    var chosen = Bool()
    static var profile: Profile! = Profile(name: "", age: "", season: "", style: "",arrInd: 0, subInd: 0)
    var springOutfits = [["springSophisticated1", "springSophisticated2", "springSophisticated3", "springSophisticated4", "springSophisticated5"],["springElegant1", "springElegant2", "springElegant3", "springElegant4", "springElegant5"],["springCasual1", "springCasual2", "springCasual3", "springCasual4", "springCasual5"],["springAthletic1", "springAthletic2", "springAthletic3", "springAthletic4", "springAthletic5"]]
    
    var summerOutfits = [["summerSophisticated1", "summerSophisticated2", "summerSophisticated3", "summerSophisticated4", "summerSophisticated5"],["summerElegant1", "summerElegant2", "summerElegant3", "summerElegant4", "summerElegant5"],["summerCasual1", "summerCasual2", "summerCasual3", "summerCasual4", "summerCasual5"],["summerAthletic1", "summerAthletic2", "summerAthletic3", "summerAthletic4", "summerAthletic5"]]
   
    var autumnOutfits = [["autumnSophisticated1", "autumnSophisticated2", "autumnSophisticated3", "autumnSophisticated4", "autumnSophisticated5"],["autumnElegant1", "autumnElegant2", "autumnElegant3", "autumnElegant4", "autumnElegant5"],["autumnCasual1", "autumnCasual2", "autumnCasual3", "autumnCasual4", "autumnCasual5"],["autumnAthletic1", "autumnAthletic2", "autumnAthletic3", "autumnAthletic4", "autumnAthletic5"]]
    
    var winterOutfits = [["winterSophisticated1", "winterSophisticated2", "winterSophisticated3", "winterSophisticated4", "winterSophisticated5"],["winterElegant1", "winterElegant2", "winterElegant3", "winterElegant4", "winterElegant5"],["winterCasual1", "winterCasual2", "winterCasual3", "winterCasual4", "winterCasual5"],["winterAthletic1", "winterAthletic2", "winterAthletic3", "winterAthletic4", "winterAthletic5"]]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseOutfitArray();
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func chooseOutfitArray()
    {
        if(QuizViewController.profile.season == "Spring")
        {
              outfits = springOutfits
            outfit.image = UIImage(named: springOutfits[0][0])
        }
        else if(QuizViewController.profile.season == "Summer")
        {
             outfits = summerOutfits
            outfit.image = UIImage(named: summerOutfits[0][0])
        }
        else if(QuizViewController.profile.season == "Autumn")
        {
             outfits = autumnOutfits
             outfit.image = UIImage(named: autumnOutfits[0][0])
        }
        else
        {
             outfits = winterOutfits
            outfit.image = UIImage(named: winterOutfits[0][0])
        }
    }
    @IBAction func showPopup(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "popUp", sender: "swipeR")
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tablePopUpID") as! PopUpTableViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove( toParentViewController: self)
        //self.performSegue(withIdentifier: "popUp", sender: "swipeR")

    }
//   @IBAction func unwindToOutfits(segue: UIStoryboardSegue) {
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "popUp" {
            let dvc = segue.destination as! PopUpTableViewController
            let spring = springOutfits
            let summer = summerOutfits
            let autumn = autumnOutfits
            let winter = winterOutfits
            
            dvc.spring = spring
            dvc.summer = summer
            dvc.autumn = autumn
            dvc.winter = winter
            
            let chosen = self.chosen
            dvc.chosenBool = chosen
        }
        
    }
    
    @IBAction func swipeL(_ sender: UISwipeGestureRecognizer) {
        index += 1
        if index > 4 {
            index = 0
        }
        if(QuizViewController.profile.style == "Sophisticated")
        {
            ResultViewController.profile.arrInd = 0
            outfit.image = UIImage(named: outfits[0][index])
        }
        else if(QuizViewController.profile.style == "Elegant")
        {
            ResultViewController.profile.arrInd = 1
            outfit.image = UIImage(named: outfits[1][index])
        }
        else if(QuizViewController.profile.style == "Casual")
        {
           ResultViewController.profile.arrInd = 2
           outfit.image = UIImage(named: outfits[2][index])
        }
        else
        {
            ResultViewController.profile.arrInd = 3
            outfit.image = UIImage(named: outfits[3][index])
        }
    }
    @IBAction func swipeR(_ sender: UISwipeGestureRecognizer) {
        chosen = true
        ResultViewController.profile.subInd  = index
        index += 1
        if index > 4 {
            index = 0
        }
        if(QuizViewController.profile.style == "Sophisticated")
        {
            outfit.image = UIImage(named: outfits[0][index])
        }
        else if(QuizViewController.profile.style == "Elegant")
        {
            outfit.image = UIImage(named: outfits[1][index])
        }
        else if(QuizViewController.profile.style == "Casual")
        {
            outfit.image = UIImage(named: outfits[2][index])
        }
        else
        {
            outfit.image = UIImage(named: outfits[3][index])
        }
    }
   
}

