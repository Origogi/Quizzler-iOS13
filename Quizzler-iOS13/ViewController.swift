//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!

    var question  = 0

    let quiz           = [
        ["Four + Two is equals Six", "True"],
        ["Four - Three is greater than One", "True"],
        ["Four + Eight is equals less than Ten", "False"]
    ]

    override func viewDidLoad(){
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func pressButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[question][1]
        
        if (userAnswer == actualAnswer) {
            print("right!")
        }
        else {
            print("Wrong!")
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
        questionLabel.text = quiz[question][0]
    }

}
