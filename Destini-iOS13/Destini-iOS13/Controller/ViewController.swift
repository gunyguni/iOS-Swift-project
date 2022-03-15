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
    
    
    var stories = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        if let choice: String = sender.currentTitle {
            stories.nextStory(choice)
        } else {
            return
        }
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = stories.getStory()
        choice1Button.setTitle(stories.getChoice1(), for: .normal)
        choice2Button.setTitle(stories.getChoice2(), for: .normal)
    }
}

