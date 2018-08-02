//
//  ResultsViewController.swift
//  GWC Capstone
//
//  Created by Spence on 7/31/18.
//  Copyright © 2018 Maya and Delaney. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var numCorrect: Int = 0
    var total: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultsLabel.text = "You got \(numCorrect) out of \(total)"
        let percentRight = (Double(numCorrect) / Double(total))*100
        var title: String = " "
        if(percentRight < 40) {
            title = "You have a lot to learn."
            
        }
        else if(percentRight < 75) {
            title = "Not bad."
        }
        else {
            title = "Great job!!!"
        }
        titleLabel.text = title
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
