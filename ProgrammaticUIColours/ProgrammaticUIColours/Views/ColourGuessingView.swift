//
//  ColourGuessingView.swift
//  ProgrammaticUIColours
//
//  Created by Cameron Rivera on 1/28/20.
//  Copyright © 2020 Cameron Rivera. All rights reserved.
//

import UIKit

class ColourGuessingView: UIView {

    // MARK: Properties of ColourGuessingView
    public var greenButton: UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.backgroundColor = .systemGreen
        button.tag = 10
        button.addTarget(nil, action: #selector(ColourViewController.buttonPressed(_:)), for: .touchUpInside)
        return button
    }()
    
    public var blueButton: UIButton = {
       let button = UIButton()
        button.setTitle("", for: .normal)
        button.backgroundColor = .systemBlue
        button.tag = 11
        button.addTarget(nil, action: #selector(ColourViewController.buttonPressed), for: .touchUpInside)
        return button
    }()
    
    public var redButton: UIButton = {
       let button = UIButton()
        button.setTitle("", for: .normal)
        button.backgroundColor = .systemRed
        button.tag = 12
        button.addTarget(nil, action: #selector(ColourViewController.buttonPressed), for: .touchUpInside)
        return button
    }()
    
    public var stackView: UIStackView = {
      let stackView = UIStackView()
        return stackView
    }()
    
    public var scoreLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    public var highScoreLabel: UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    public var colourView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue
        return view
    }()
    
    // MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    // MARK: Helper Method
    private func commonInit() {
        setUpColourViewConstraints()
        setUpStackViewConstraints()
        setUpScoreLabelConstraints()
        setUpHighScoreLabel()
    }
    
    // MARK: Methods to set constraints
    private func setUpColourViewConstraints(){
        addSubview(colourView)
        colourView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([colourView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20), colourView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20), colourView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20), colourView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.40)])
        
    }
    
    private func setUpStackViewConstraints() {
        stackView.addArrangedSubview(redButton)
        stackView.addArrangedSubview(greenButton)
        stackView.addArrangedSubview(blueButton)
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
       // stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.axis = .horizontal
        NSLayoutConstraint.activate([stackView.topAnchor.constraint(equalTo: colourView.bottomAnchor, constant: 40), stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20), stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)])
    }
    
    private func setUpScoreLabelConstraints() {
        addSubview(scoreLabel)
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([scoreLabel.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 40), scoreLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20), scoreLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 20)])
    }
    
    private func setUpHighScoreLabel() {
        addSubview(highScoreLabel)
        highScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([highScoreLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor, constant: 40), highScoreLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20), highScoreLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 20)])
    }
    
}
