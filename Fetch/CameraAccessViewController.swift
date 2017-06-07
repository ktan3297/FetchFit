//
//  CameraAccessViewController.swift
//  Fetch
//
//  Created by Kristy Tan on 5/26/17.
//  Copyright © 2017 Kristy Tan. All rights reserved.
//

import UIKit

class CameraAccessViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var imageDisplay: UIImageView!
    @IBOutlet weak var camSticker1: UIImageView!
    @IBOutlet weak var camSticker2: UIImageView!
    @IBOutlet weak var camSticker3: UIImageView!
    @IBOutlet weak var camSticker4: UIImageView!
    @IBOutlet weak var camSticker5: UIImageView!
    @IBOutlet weak var tap1: UIButton!
    @IBOutlet weak var tap2: UIButton!
    @IBOutlet weak var tap3: UIButton!
    @IBOutlet weak var tap4: UIButton!
    @IBOutlet weak var tap5: UIButton!
    
    var heart1 = 0
    var m = 0
    var crown1 = 0
    var sparkle1 = 0
    var star1 = 0
    
    @IBAction func tapSticker(_ sender: UIButton) {
        heart1 += 1
        if(heart1 == 1){
            camSticker1.image = #imageLiteral(resourceName: "heart")
        }
        else{
            heart1 = 0
            camSticker1.image = nil
        }
    }
    
    @IBAction func tapSticker2(_ sender: UIButton) {
        m += 1
        if(m == 1){
            camSticker2.image = #imageLiteral(resourceName: "minion")
        }
        else{
            m = 0
            camSticker2.image = nil
        }
    }

    @IBAction func tapSticker3(_ sender: UIButton) {
        crown1 += 1
        if(crown1 == 1){
            camSticker3.image = #imageLiteral(resourceName: "pink_crown")
        }
        else{
            crown1 = 0
            camSticker3.image = nil
        }
    }
    
    @IBAction func TapSticker4(_ sender: UIButton) {
        sparkle1 += 1
        if(sparkle1 == 1){
            camSticker4.image = #imageLiteral(resourceName: "sparkle")
        }
        else{
            sparkle1 = 0
            camSticker4.image = nil
        }
    
    }
    
    @IBAction func tapSticker5(_ sender: UIButton) {
        star1 += 1
        if(star1 == 1){
            camSticker5.image = #imageLiteral(resourceName: "star")
        }
        else{
            star1 = 0
            camSticker5.image = nil
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func takePhoto(_ sender: UIButton) {
        if(UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera)){
            let cameraUsed = UIImagePickerController()
            cameraUsed.delegate = self
            cameraUsed.sourceType = UIImagePickerControllerSourceType.camera
            self.present(cameraUsed, animated: true , completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imageDisplay.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        if(imageDisplay.image != nil){
            tap1.isEnabled = true
            tap2.isEnabled = true
            tap3.isEnabled = true
            tap4.isEnabled = true
        }
        super.viewDidLoad()
        dismiss(animated: true, completion: nil)
        imageDisplay.contentMode = .scaleToFill
        
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
