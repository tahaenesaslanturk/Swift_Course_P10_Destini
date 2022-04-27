//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        storyBrain.goToStory(userAnswer)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryText()
        choice1Button.setTitle(storyBrain.getStoryChoices()[0], for: .normal)
        choice2Button.setTitle(storyBrain.getStoryChoices()[1], for: .normal)
    }

}

