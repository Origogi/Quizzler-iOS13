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

    var qustionNumber = 0
    
    let quiz           = [
        "Four + Two is equals Six",
        "Four - Three is greater than One",
        "Four + Eight is equals less than Ten"
    ]

    override func viewDidLoad(){
        super.viewDidLoad()
        updateUI()
    }
    

    @IBAction func pressButton(_ sender: UIButton) {
        qustionNumber += 1
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[qustionNumber]
    }
    
}
