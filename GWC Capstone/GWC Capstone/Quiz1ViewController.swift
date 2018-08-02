//
//  Quiz1ViewController.swift
//  GWC Capstone
//
//  Created by Spence on 7/31/18.
//  Copyright © 2018 Maya and Delaney. All rights reserved.
//

import UIKit

class Quiz1ViewController: UIViewController {

    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var correctLabel: UILabel!
    
    @IBOutlet weak var answer0: UIButton!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    
    @IBAction func submitAnswer0(_ sender: UIButton) {
        checkAnswer(idx: 0)
    }
    @IBAction func submitAnswer1(_ sender: UIButton) {
        checkAnswer(idx: 1)
    }
    @IBAction func submitAnswer2(_ sender: UIButton) {
        checkAnswer(idx: 2)
    }
    @IBAction func submitAnswer3(_ sender: UIButton) {
        checkAnswer(idx: 3)
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
    
    var currentQuestion: Question?
    var currentQuestionPosition: Int = 0
    var numCorrect: Int = 0
    
    func setQuestion() {
        questionLabel.text = currentQuestion!.question
        answer0.setTitle(currentQuestion!.answers[0], for: .normal)
        answer1.setTitle(currentQuestion!.answers[1], for: .normal)
        answer2.setTitle(currentQuestion!.answers[2], for: .normal)
        answer3.setTitle(currentQuestion!.answers[3], for: .normal)
        progressLabel.text = "Question \(currentQuestionPosition + 1)/ \(questions.count)"
    }
    
    func loadNextQuestion() {
        if currentQuestionPosition + 1 < questions.count {
            currentQuestionPosition += 1
            currentQuestion = questions[currentQuestionPosition]
            setQuestion()
        }
        else {
            performSegue(withIdentifier: "sgShowResults", sender: nil)
        }
    }
    
    func checkAnswer(idx: Int) {
        if idx == currentQuestion!.correctAnswer {
            numCorrect += 1
        }
        correctLabel.text = "The correct answer was \(String(describing: currentQuestion!.answers[(currentQuestion!.correctAnswer)]))."
        loadNextQuestion()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "sgShowResults") {
            let vc = segue.destination as! ResultsViewController
            vc.numCorrect = numCorrect
            vc.total = questions.count
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuestion = questions[0]
        setQuestion()
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
