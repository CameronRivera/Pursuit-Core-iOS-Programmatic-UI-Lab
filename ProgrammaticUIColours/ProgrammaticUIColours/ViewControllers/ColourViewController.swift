//
//  ViewController.swift
//  ProgrammaticUIColours
//
//  Created by Cameron Rivera on 1/28/20.
//  Copyright © 2020 Cameron Rivera. All rights reserved.
//

import UIKit

class ColourViewController: UIViewController {
    
    // MARK: Properties of ColourViewController
    var colourGuessingView = ColourGuessingView()
    var colourHandler = ColourGuessingLogic()
    
    // Sets the view to my custom view
    override func loadView(){
        view = colourGuessingView
    }
    
    // MARK: LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    // MARK: Helper Functions
    private func setUp(){
        view.backgroundColor = .systemBackground
        navigationItem.title = "Colour Guessing Game"
        colourGuessingView.colourView.backgroundColor = colourHandler.randomizeColour()
        colourGuessingView.scoreLabel.text = "Current Score: \(colourHandler.numberOfCorrectGuesses)"
        colourGuessingView.highScoreLabel.text = "All Time HighScore: \(colourHandler.allTimeHighScore)"
    }
    
    @objc
    public func buttonPressed(_ sender: UIButton){
        let state = ColourGuessed.init(rawValue: sender.tag) ?? ColourGuessed.blue
        
        switch state{
        case ColourGuessed.green:
            // If incorrect, end game, disable buttons, and display alert. 
            if colourHandler.checkUserChoice(state) {
                colourGuessingView.colourView.backgroundColor = colourHandler.randomizeColour()
                colourGuessingView.scoreLabel.text = "Current Score: \(colourHandler.numberOfCorrectGuesses)"
                colourGuessingView.highScoreLabel.text = "All Time HighScore: \(colourHandler.allTimeHighScore)"
            } else {
                showAlert("Game Over", "Would you like to play again?") { [weak self] alertAction in
                    self?.colourHandler.playAgain(true)
                    self?.colourGuessingView.colourView.backgroundColor = self?.colourHandler.randomizeColour()
                    self?.colourGuessingView.scoreLabel.text = "Current Score: \(self?.colourHandler.numberOfCorrectGuesses ?? 0)"
                }
            }
        case ColourGuessed.blue:
            if colourHandler.checkUserChoice(state) {
                colourGuessingView.colourView.backgroundColor = colourHandler.randomizeColour()
                colourGuessingView.scoreLabel.text = "Current Score: \(colourHandler.numberOfCorrectGuesses)"
                colourGuessingView.highScoreLabel.text = "All Time HighScore: \(colourHandler.allTimeHighScore)"
            } else {
                showAlert("Game Over", "Would you like to play again?") { [weak self] alertAction in
                    self?.colourHandler.playAgain(true)
                    self?.colourGuessingView.colourView.backgroundColor = self?.colourHandler.randomizeColour()
                    self?.colourGuessingView.scoreLabel.text = "Current Score: \(self?.colourHandler.numberOfCorrectGuesses ?? 0)"
                }
            }
        case ColourGuessed.red:
            if colourHandler.checkUserChoice(state) {
                colourGuessingView.colourView.backgroundColor = colourHandler.randomizeColour()
                colourGuessingView.scoreLabel.text = "Current Score: \(colourHandler.numberOfCorrectGuesses)"
                colourGuessingView.highScoreLabel.text = "All Time HighScore: \(colourHandler.allTimeHighScore)"
            } else {
                showAlert("Game Over", "Would you like to play again?") { [weak self] alertAction in
                    self?.colourHandler.playAgain(true)
                    self?.colourGuessingView.colourView.backgroundColor = self?.colourHandler.randomizeColour()
                    self?.colourGuessingView.scoreLabel.text = "Current Score: \(self?.colourHandler.numberOfCorrectGuesses ?? 0)"
                }
            }
        }
    }
}

