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
    
    @IBAction func tapSticker(_ sender: UIButton) {
        camSticker1.image = #imageLiteral(resourceName: "heart")
        
    }
    
    @IBAction func tapSticker2(_ sender: UIButton) {
        camSticker2.image = #imageLiteral(resourceName: "autumnAthletic4")
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
