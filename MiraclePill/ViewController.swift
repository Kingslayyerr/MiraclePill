//
//  ViewController.swift
//  MiraclePill
//
//  Created by christian espinoza on 11/23/16.
//  Copyright © 2016 Christian Espinoza. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipField: UITextField!
    
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var scsBack: UIImageView!
    @IBOutlet weak var scsMessage: UIImageView!
    
    
    let states = ["Alaska", "Alabama","Arkansas","American Samoa", "Arizona", "California","Colorado","Connecticut","District of Columbia","Delaware","Florida","Georgia","Guam","Hawaii","Iowa","Idaho","Illinois","Indiana","Kansas","Kentucky","Louisiana","Massachusetts","Maryland","Maine","Michigan","Minnesota","Missouri","Mississippi","Montana","North Carolina"," North Dakota","Nebraska","New Hampshire","New Jersey","New Mexico","Nevada","New York","Ohio","Oklahoma","Oregon","Pennsylvania","Puerto Rico","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Virginia","Virgin Islands","Vermont","Washington","Wisconsin","West Virginia","Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        cityLabel.isHidden = true
        cityTextField.isHidden = true
        zipLabel.isHidden = true
        zipField.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
     return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        cityLabel.isHidden = false
        cityTextField.isHidden = false
        zipLabel.isHidden = false
        zipField.isHidden = false
    }
    
    @IBAction func buyBtn(_ sender: Any) {
        scsBack.isHidden = false
        scsMessage.isHidden = false
    }
    
    
}

