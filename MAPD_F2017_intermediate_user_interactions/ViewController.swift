//
//  ViewController.swift
//  MAPD_F2017_intermediate_user_interactions
//
//  Created by Amandeep Sekhon on 2017-09-20.
//  Copyright © 2017 Amandeep Sekhon. All rights reserved.
//
/* 
 *Name: Amandeep Sekhon
 * Date: September 20,2017
 *StudentID: 
 *Description: Intermediate User Interactions Demo
 *Version: 0.1-Built Basic UI
 *Version:0.1 -Add methods and outlets
 *Version : 0.1-Add partial functionality
 */
import UIKit

class ViewController: UIViewController {
 //OUTLETS  +++++++++++++++++
 //INHERITED METHODS ++++++++++++
 
    @IBOutlet weak var nametextfield: UITextField!

    @IBOutlet weak var numbertextfield: UITextField!
    
    @IBOutlet weak var sliderlabel: UILabel!
    
    @IBOutlet weak var leftswitch: UISwitch!
    
    @IBOutlet weak var rightswitch: UISwitch!
    
    
    @IBOutlet weak var dosomethingbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Action methods +++++++
    
    @IBAction func textFieldDoneEditing(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    
    @IBAction func onTapGestureRecognized(_ sender: UITapGestureRecognizer) {
        nametextfield.resignFirstResponder()
        numbertextfield.resignFirstResponder()
    }

    @IBAction func onSliderChanged(_ sender: UISlider) {
        sliderlabel.text = String(lroundf(sender.value))
    }
    
    @IBAction func onSegmentedConterolChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            leftswitch.isHidden = false
        rightswitch.isHidden = false
            dosomethingbutton.isHidden = true
        }
        else{
            leftswitch.isHidden = true
            rightswitch.isHidden = true
            dosomethingbutton.isHidden = false

            
        }
        
            
            
    }
    
    
        
        

    
  
    @IBAction func dosomethiongpressed(_ sender: UIButton) {
    }
    
    
    @IBAction func onSwitchChange(_ sender: UISwitch) {
        let setting = sender.isOn
        leftswitch.setOn(setting, animated: true)
        rightswitch.setOn(setting, animated: true)
    }
    
    
}







 
