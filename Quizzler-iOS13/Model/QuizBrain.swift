//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by 1101373 on 2020/04/04.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
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

    var questionNumber = 0

    func checkAnswer(_ answer: String) -> Bool {
        return answer == quiz[questionNumber].answser
    }

    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }

    func getProgress() -> Float {
        return (Float(questionNumber) + 1) / Float(quiz.count)
    }

    mutating func nextQuestion() {
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        }
        else {
            questionNumber = 0
        }
    }
}
