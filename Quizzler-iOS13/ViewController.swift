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

    var question = 0

    let quiz = [
        Question(text: "A slug's blood is green.", answser: "True"),
        Question(text: "Approximately one quarter of human bones are in the feet.", answser: "True"),
        Question(text: "The total surface area of two human lungs is approximately 70 square metres.", answser: "True"),
        Question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answser: "True"),
        Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answser: "False"),
        Question(text: "It is illegal to pee in the Ocean in Portugal.", answser: "True"),
        Question(text: "You can lead a cow down stairs but not up stairs.", answser: "False"),
        Question(text: "Google was originally called 'Backrub'.", answser: "True"),
        Question(text: "Buzz Aldrin's mother's maiden name was 'Moon'.", answser: "True"),
        Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answser: "False"),
        Question(text: "No piece of square dry paper can be folded in half more than 7 times.", answser: "False"),
        Question(text: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answser: "True")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func pressButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[question].answser

        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
        }
        else {
            sender.backgroundColor = UIColor.red
        }

        if question < quiz.count - 1 {
            question += 1
        }
        else {
            question = 0
        }

        updateUI()
    }

    func updateUI() {
        questionLabel.text = quiz[question].text

        let progress = (Float(question) + 1) / Float(quiz.count)
        var animated = true

        if question == 0 {
            animated = false
        }

        progressBar.setProgress(progress, animated: animated)

        Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false) { (_: Timer) in
            self.falseButton.backgroundColor = UIColor.clear
            self.trueButton.backgroundColor = UIColor.clear
        }
    }
}
