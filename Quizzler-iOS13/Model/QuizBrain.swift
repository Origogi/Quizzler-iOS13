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
        Question(text: "Which is the largest organ in the human body?", answsers: ["Heart", "Skin", "Large Intestine"], correnctAnswer: "Skin"),
        Question(text: "Five dollars is worth how many nickels?", answsers: ["25", "50", "100"], correnctAnswer: "100"),
        Question(text: "What do the letters in the GMT time zone stand for?", answsers: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correnctAnswer: "Greenwich Mean Time"),
        Question(text: "What is the French word for 'hat'?", answsers: ["Chapeau", "Écharpe", "Bonnet"], correnctAnswer: "Chapeau"),
        Question(text: "In past times, what would a gentleman keep in his fob pocket?", answsers: ["Notebook", "Handkerchief", "Watch"], correnctAnswer: "Watch"),
        Question(text: "How would one say goodbye in Spanish?", answsers: ["Au Revoir", "Adiós", "Salir"], correnctAnswer: "Adiós"),
        Question(text: "Which of these colours is NOT featured in the logo for Google?", answsers: ["Green", "Orange", "Blue"], correnctAnswer: "Orange"),
        Question(text: "What alcoholic drink is made from molasses?", answsers: ["Rum", "Whisky", "Gin"], correnctAnswer: "Rum"),
        Question(text: "What type of animal was Harambe?", answsers: ["Panda", "Gorilla", "Crocodile"], correnctAnswer: "Gorilla"),
        Question(text: "Where is Tasmania located?", answsers: ["Indonesia", "Australia", "Scotland"], correnctAnswer: "Australia")
    ]

    var questionNumber = 0
    var currentScore = 0

    mutating func checkAnswer(_ answer: String) -> Bool {
        let result = (answer == quiz[questionNumber].correnctAnswer)
        if result {
            currentScore += 1
        }
        return result
    }

    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }

    func getAnswsers() -> [String] {
        return quiz[questionNumber].answsers
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
            currentScore = 0
        }
    }

    func getScore() -> Int {
        return currentScore
    }
}
