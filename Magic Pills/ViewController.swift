//
//  ViewController.swift
//  Magic Pills
//
//  Created by Gerson Costa on 11/09/17.
//  Copyright © 2017 Gerson Costa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var postCode: UILabel!
    @IBOutlet weak var postCdBar: UITextField!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var countryBar: UITextField!
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var blankView: UIView!
    @IBOutlet weak var success: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    let states = ["London", "Warwick", "Staford", "Manchester", "Oxford"]
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryBar.isHidden = true
        postCode.isHidden = true
        country.isHidden = true
        postCdBar.isHidden = true
        buyBtn.isHidden = true
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
        countryBar.isHidden = false
        postCode.isHidden = false
        country.isHidden = false
        postCdBar.isHidden = false
        buyBtn.isHidden = false
    }
    @IBAction func buyBtnPressed(_ sender: Any) {
        blankView.isHidden = false
        success.isHidden = false
    }
    
    @IBAction func successPressed(_ sender: Any) {
        blankView.isHidden = true
        success.isHidden = true
    }
}

