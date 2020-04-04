//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var progressView: UIProgressView!
    @IBOutlet var scoreLabel: UILabel!

    @IBOutlet var choice1: UIButton!
    @IBOutlet var choice2: UIButton!
    @IBOutlet var choice3: UIButton!

    var quizBrain = QuizBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func pressButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!

        if quizBrain.checkAnswer(userAnswer) {
            sender.backgroundColor = UIColor.green
        }
        else {
            sender.backgroundColor = UIColor.red
        }

        quizBrain.nextQuestion()

        updateUI()
    }

    func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        choice1.setTitle(quizBrain.getAnswsers()[0], for: .normal)
        choice2.setTitle(quizBrain.getAnswsers()[1], for: .normal)
        choice3.setTitle(quizBrain.getAnswsers()[2], for: .normal)


        let progress = quizBrain.getProgress()
        progressBar.setProgress(progress, animated: true)
        scoreLabel.text = "Score : \(quizBrain.getScore()) / \(quizBrain.quiz.count)"

        Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false) { (_: Timer) in
            self.choice3.backgroundColor = UIColor.clear
            self.choice2.backgroundColor = UIColor.clear
            self.choice1.backgroundColor = UIColor.clear
        }
    }
}
