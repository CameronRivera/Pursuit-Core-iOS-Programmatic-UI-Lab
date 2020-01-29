//
//  ViewController.swift
//  ProgrammaticUIColours
//
//  Created by Cameron Rivera on 1/28/20.
//  Copyright © 2020 Cameron Rivera. All rights reserved.
//

import UIKit

class ColourViewController: UIViewController {

    var colourGuessingView = ColourGuessingView()
    
    override func loadView(){
        view = colourGuessingView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    private func setUp(){
        view.backgroundColor = .systemBackground
        navigationItem.title = "Colour Guessing Game"
    }


}

