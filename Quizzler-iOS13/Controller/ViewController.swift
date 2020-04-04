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
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    @IBOutlet var progressView: UIProgressView!

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

        let progress = quizBrain.getProgress()
        progressBar.setProgress(progress, animated: true)

        Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false) { (_: Timer) in
            self.falseButton.backgroundColor = UIColor.clear
            self.trueButton.backgroundColor = UIColor.clear
        }
    }
}
