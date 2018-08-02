//
//  InputViewController.swift
//  GWC Capstone
//
//  Created by Spence on 8/2/18.
//  Copyright © 2018 Maya and Delaney. All rights reserved.
//

import UIKit
import CoreData

class InputViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func addButton(_ sender: UIButton) {
        if (textField.text != "") {
            let context1 = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let newTask = Task(context: context1)
            newTask.taskName = textField?.text
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            textField.text = ""
            textField.resignFirstResponder()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
