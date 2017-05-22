//
//  QuizViewController.swift
//  Fetch
//
//  Created by Kristy Tan on 5/9/17.
//  Copyright © 2017 Kristy Tan. All rights reserved.
//

import UIKit


class QuizViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var NameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var seasonField: UITextField!
    @IBOutlet weak var styleField: UITextField!
    
    @IBOutlet weak var options: UIPickerView!
    static var profile: Profile! = Profile(name: "", age: "", season: "", style: "")
    var name = ""
    var idLabel = ""
    
    var ages = ["13", "14", "15", "16", "17", "18", "19", "20", "21"]
    
    var seasons = ["Autumn", "Winter", "Spring", "Summer"]
    
    var styles = ["Casual","Elegant", "Sophisticated", "Athletic"]
    
    @IBAction func ageLabelClicked(_ sender: UITextField) {
        idLabel = "ages"
        options.reloadAllComponents()
        options.isHidden = false
    }
    
    @IBAction func seasonLabel(_ sender: UITextField) {
        idLabel = "seasons"
        options.reloadAllComponents()
        options.isHidden = false
    }
    
    @IBAction func styleLabelClicked(_ sender: UITextField) {
        idLabel = "styles"
        options.reloadAllComponents()
        options.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch idLabel {
            case "seasons":
                return seasons[row]
            case "styles":
                return styles[row]
        default:
            return ages[row]
        }
       
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch idLabel {
            case "seasons":
                return seasons.count
            case "styles":
                return styles.count
        default:
            return ages.count
        }

    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch idLabel {
            case "seasons":
                seasonField.text = seasons[row]
                options.isHidden = true
            case "styles":
                styleField.text = styles[row]
                options.isHidden = true

        default:
             ageField.text = ages[row]
             options.isHidden = true
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        name = NameField.text!
        let helloVc: HelloViewController = segue.destination as! HelloViewController
        let passedPhrase = "Hello \(name)"
        helloVc.receivedPhrase = passedPhrase
        
        QuizViewController.profile.name = name
        QuizViewController.profile.age = ageField.text!
        QuizViewController.profile.season = seasonField.text!
        QuizViewController.profile.style = styleField.text!
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
