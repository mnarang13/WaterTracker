//
//  Resources1ViewController.swift
//  GWC Capstone
//
//  Created by Spence on 7/31/18.
//  Copyright © 2018 Maya and Delaney. All rights reserved.
//

import UIKit

class Resources1ViewController: UIViewController {
    
    @IBOutlet weak var recommendationLabel: UITextView!
    
    var currentPosition: Int = 0
    var recommendations: [String] = ["On average, 4 gallons of water are used every time you flush the toilet.", "Greenland loses an average of 281 billion tons of ice a year.", "Global sea levels have risen 8 inches in the last century. However, over the last two decades this rate has doubled.","Since the begining of the industrial revolution the acidity of ocean surface waters has risen by 30%.", "97% of scientists believe that the warming trends over the past century are very likely caused by human activity.", "The average temperature has increased by 1.5 degrees Farenheit over the past century.", "The average concentration of C02 in the atmosphere has almost doubled compared to the  last 400,000 years.", "The 9 most explosive fires have all happened after 2000.", "There is an estimated $180 billion in economic loses by the end of the century if no climate action is taken.", "Two-thirds of the Great Barrier Reef has been damaged by climate change", "Yearly, 14 billion tons of trash are dumped into the ocean."]
    
    var arrayLength = 0
    
    func getRecommendation() {
        arrayLength = recommendations.count
        currentPosition = Int(arc4random_uniform(UInt32(arrayLength)))
        
        recommendationLabel.text = recommendations[currentPosition]
    }
    
    @IBAction func newRecommendation(_ sender: UIButton) {
        getRecommendation()
    }
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        getRecommendation()
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
