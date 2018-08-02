//
//  EntryViewController.swift
//  GWC Capstone
//
//  Created by Spence on 7/31/18.
//  Copyright © 2018 Maya and Delaney. All rights reserved.
//

import UIKit
import CoreData

class EntryViewController: UIViewController {

    var shower: Double = 0
    
    @IBOutlet weak var inputTextField: UITextField!

    @IBAction func showerFive(_ sender: UISwitch) {
        if (sender.isOn == true) {
            shower += 10
        }
    }
    
    @IBAction func showerTen(_ sender: UISwitch) {
        if (sender.isOn == true) {
            shower += 20
        }
    }
    
    @IBAction func showerFifteen(_ sender: UISwitch) {
        if (sender.isOn == true) {
            shower += 30
        }
    }
    
    @IBAction func showerTwenty(_ sender: UISwitch) {
        if (sender.isOn == true) {
            shower += 40
        }
    }
    
    var datePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(EntryViewController.dateChanged(datePicker:)), for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(EntryViewController.viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
        
        inputTextField.inputView = datePicker
        
        // Do any additional setup after loading the view.
        
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    @objc func dateChanged(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyy"
        inputTextField.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }

    @IBOutlet weak var dTextField: UITextField!
    
    @IBAction func addButton(_ sender: UIButton) {
//        if (dTextField.text != "") {
//            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//            let newEntry = Entry(context: context)
//            newEntry.entryDate = dTextField?.text
//            (UIApplication.shared.delegate as! AppDelegate).saveContext()
//
//            dTextField.text = ""
//            dTextField.resignFirstResponder()
//        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is Entry2ViewController
        {
            let vc = segue.destination as? Entry2ViewController
            if (dTextField.text != "") {
                vc?.date = (dTextField?.text)!
                vc?.total = shower
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
