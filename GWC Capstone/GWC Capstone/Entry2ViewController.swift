//
//  Entry2ViewController.swift
//  GWC Capstone
//
//  Created by Spence on 8/1/18.
//  Copyright © 2018 Maya and Delaney. All rights reserved.
//

import UIKit

class Entry2ViewController: UIViewController {
    
    var date: String = ""
    var total: Double = 0
    
    @IBAction func brushedWithTap(_ sender: UISwitch) {
        if (sender.isOn == true) {
            total += 2
        }
    }
    @IBAction func brushedWithoutTap(_ sender: UISwitch) {
        if (sender.isOn == true) {
            total += 0.25
        }
    }
    @IBAction func washingMachine(_ sender: UISwitch) {
        if (sender.isOn == true) {
            total += 40
        }
    }
    @IBAction func dishwasher(_ sender: UISwitch) {
        if (sender.isOn == true) {
            total += 10
        }
    }
    @IBAction func flushedToilet(_ sender: UISwitch) {
        if (sender.isOn == true) {
            total += 8
        }
    }
    @IBAction func bath(_ sender: UISwitch) {
        if (sender.isOn == true) {
            total += 40
        }
    }
    @IBAction func general(_ sender: UISwitch) {
        if (sender.isOn == true) {
            total += 7
        }
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let newEntry = Entry(context: context)
        newEntry.entryDate = date
        newEntry.entryAction = "Water Usage: \(total) gallons"
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
