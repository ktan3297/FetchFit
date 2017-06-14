//
//  MakeupViewController.swift
//  Fetch
//
//  Created by APPLE on 6/14/17.
//  Copyright © 2017 Kristy Tan. All rights reserved.
//

import UIKit

class MakeupViewController: UIViewController, UINavigationControllerDelegate{

    @IBOutlet weak var face: UILabel!
    
    @IBOutlet weak var concealerLabel: UILabel!
    
    @IBOutlet weak var shadowLabel: UILabel!
    
    @IBOutlet weak var linerLabel: UILabel!
    
    @IBOutlet weak var mascaraLabel: UILabel!
    
    @IBOutlet weak var blushLabel: UILabel!
    
    @IBOutlet weak var lipstickLabel: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var button5: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseMakeupType()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func chooseMakeupType()
    {
        if(QuizViewController.profile.style == "athletic")
        {
            face.text = "None or Mineral Makeup"
            concealerLabel.text = "Waterproof Concealer"
            shadowLabel.text = "Optional"
            linerLabel.text = "Optional"
            mascaraLabel.text = "Waterproof Mascara"
            blushLabel.text = "Optional"
            lipstickLabel.text = "Tinted LipBalm"
            button1.setTitle("Laura Mercier Tinted Moisturizer", for: .normal)
            button2.setTitle("Burt's Bees Tinted Lip Balm", for: .normal)
            button3.setTitle("Maybelline Waterproof Mascara", for: .normal)
            button4.setTitle("Stila Waterproof Eyeliner", for: .normal)
            button5.setTitle("M.A.C Eyeshadow", for: .normal)
            
        }
        if(QuizViewController.profile.style == "casual")
        {
            face.text = "BB Cream"
            concealerLabel.text = "Light Coverage Concealer"
            shadowLabel.text = "Basic Palette"
            linerLabel.text = "Pencil Liner"
            mascaraLabel.text = "Lengthening Mascara"
            blushLabel.text = "Light Blush"
            lipstickLabel.text = "Lip Stick or Tint"
        }
        if(QuizViewController.profile.style == "Elegant")
        {
            face.text = "Light Coverage Foundation"
            concealerLabel.text = "Light Coverage Concealer"
            shadowLabel.text = "Basic Palette"
            linerLabel.text = "Pencil Liner"
            mascaraLabel.text = "Lengthening Mascara"
            blushLabel.text = "Light Blush"
            lipstickLabel.text = "Lip Stick"
        }
        if(QuizViewController.profile.style == "Sophisticated")
        {
            face.text = "Medium Coverage Foundation"
            concealerLabel.text = "Medium Coverage Concealer"
            shadowLabel.text = "Basic Palette"
            linerLabel.text = "Pen or Gel Liner"
            mascaraLabel.text = "Volumizing Mascara"
            blushLabel.text = "Light Blush"
            lipstickLabel.text = "Lip Stick"
        }
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
