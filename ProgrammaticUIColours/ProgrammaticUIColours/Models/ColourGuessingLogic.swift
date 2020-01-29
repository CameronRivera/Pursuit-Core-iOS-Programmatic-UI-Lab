//
//  ColourGuessingLogic.swift
//  ProgrammaticUIColours
//
//  Created by Cameron Rivera on 1/28/20.
//  Copyright © 2020 Cameron Rivera. All rights reserved.
//

import UIKit

// Enumeration to represent which button the user clicked.
enum ColourGuessed: Int{
    case green = 10
    case blue = 11
    case red = 12
}

class ColourGuessingLogic{
    
    // MARK: Properties of ColourGuessingLogic
    var numberOfCorrectGuesses = 0
    var allTimeHighScore = 0
    var greenComponent = 0.0
    var redComponent = 0.0
    var blueComponent = 0.0
    
    // MARK: Helper Methods
    func randomizeColour() -> UIColor {
        greenComponent = Double.random(in: 0.0...1.0)
        redComponent = Double.random(in: 0.0...1.0)
        blueComponent = Double.random(in: 0.0...1.0)
        return UIColor(displayP3Red: CGFloat(redComponent), green: CGFloat(greenComponent), blue: CGFloat(blueComponent), alpha: 1.0)
    }
    
    func playAgain(_ userChoice: Bool){
        numberOfCorrectGuesses = 0
    }
    
    func checkUserChoice(_ state: ColourGuessed) -> Bool{
        let components = [greenComponent, redComponent, blueComponent]
        
        let dominantComponent = components.reduce(0.0) { (x1: Double, x2: Double) in
            return x1 > x2 ? x1 : x2
        }
        
        switch state{
        case ColourGuessed.green where dominantComponent == greenComponent:
            numberOfCorrectGuesses += 1
            if allTimeHighScore < numberOfCorrectGuesses {
                allTimeHighScore = numberOfCorrectGuesses
            }
            return true
        case ColourGuessed.red where dominantComponent == redComponent:
            numberOfCorrectGuesses += 1
            if allTimeHighScore < numberOfCorrectGuesses {
                allTimeHighScore = numberOfCorrectGuesses
            }
            return true
        case ColourGuessed.blue where dominantComponent == blueComponent:
            numberOfCorrectGuesses += 1
            if allTimeHighScore < numberOfCorrectGuesses {
                allTimeHighScore = numberOfCorrectGuesses
            }
            return true
        default:
            return false
        }
    }
}
