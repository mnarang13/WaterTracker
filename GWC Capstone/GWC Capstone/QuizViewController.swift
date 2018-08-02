//
//  QuizViewController.swift
//  GWC Capstone
//
//  Created by Spence on 7/31/18.
//  Copyright © 2018 Maya and Delaney. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var correctLabel: UILabel!
    
    @IBOutlet weak var answer0: UIButton!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    
    @IBAction func submitAnswer0(_ sender: UIButton) {
    }
    @IBAction func submitAnswer1(_ sender: UIButton) {
    }
    @IBAction func submitAnswer2(_ sender: UIButton) {
    }
    @IBAction func submitAnswer3(_ sender: UIButton) {
    }
    
    struct Question {
        let question: String
        let answers: [String]
        let correctAnswer: Int
    }
    
    var questions: [Question] = [
        Question(
            question: "What is the largest indoor use of water domestically? (27%)",
            answers: ["Shower and bath", "Washing machine", "Dishwasher", "Toilet"],
            correctAnswer: 0),
        Question(
            question: "How many gallons of water does it take to produce one gallon of gas?",
            answers: ["2 gallons", "5 gallons", "14 gallons", "25 gallons"],
            correctAnswer: 2),
        Question(
            question:"_% of electricity is used to power home electronics while they are off.",
            answers: ["25%", "50%", "75%", "95%"],
            correctAnswer: 2),
        Question(
            question: "What kind of lightbulb is most energy efficient?",
            answers: ["LED", "Fluorescent", "Incandescent", "Halogen"],
            correctAnswer: 0),
        Question(
            question: "Over ⅕ of the world’s energy is used for:",
            answers: ["Industry", "Transportation", "Residential", "Commercial"],
            correctAnswer: 1),
        Question(
            question: "How much carbon dioxide does the average car emit yearly?",
            answers: ["1,000 lbs", "1.5 tons", "3 tons", "6 tons"],
            correctAnswer: 3),
        Question(
            question: "How many gallons of water does the average American use a day?",
            answers: ["20-50 gallons", "90-120 gallons", "140-170 gallons", "180-220 gallons"],
            correctAnswer: 2)
    ]
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
