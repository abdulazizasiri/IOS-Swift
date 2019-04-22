//
//  ViewController.swift
//  MatchMatch
//
//  Created by Abdulaziz Asiri on 11/15/18.
//  Copyright © 2018 Abdulaziz Asiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Counter to keep track how many times we have flipped the card.
    var flipCounts: Int = 0 {
        didSet{
            flipCountLabel.text = "\(self.flipCounts)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   
    var emoies = ["👻","👻","🎃","🎃"]
    @IBOutlet var cardButtons: [UIButton]!
    // this is for pumpkin.
    
    // We will have this function to be used for all cards instead of creating many methods to do the same job.
    @IBAction func touchSecondCard(_ sender: UIButton) {
        self.flipCounts+=1
        if let cardNumber = cardButtons.index(of:sender) {
            flipCard(withEmoji: emoies[cardNumber], on: sender)
        } else {
            print("Element is not in the arrat")
        }
    }
    
    func flipCard(withEmoji emoji: String, on button:UIButton ) {
        print(button.currentTitle == emoji)
        // When we   click, we need to face up. (white background)
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.6679217219, blue: 0, alpha: 1) // color. is a color literal
 
            
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
    }
}

