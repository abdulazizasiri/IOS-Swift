//
//  ViewController.swift
//  MatchGame
//
//  Created by Abdulaziz Asiri on 12/23/18.
//  Copyright © 2018 Abdulaziz Asiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
            self.flipCountLabel.text = "Flips: \(flipCount)"

        }
    }
    

    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoicex = ["🎃","👻","🎃","👻"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount+=1
        if let indexNumber = cardButtons.index(of: sender) {
            print("Card number is \(String(describing: indexNumber))")
            flipCard(withEmoji: emojiChoicex[indexNumber], on: sender)

        } else {
            print("Was not connected to the array")
        }
        
    }
// In swift, the only meaning for nil is the optional was not set.
    
    func flipCard(withEmoji emoji: String , on button: UIButton){
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            // Set background color:
            button.backgroundColor = #colorLiteral(red: 1, green: 0.6679217219, blue: 0, alpha: 1)
            
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            // Set background color:
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}





