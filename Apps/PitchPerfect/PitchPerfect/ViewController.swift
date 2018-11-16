//
//  ViewController.swift
//  MatchMatch
//
//  Created by Abdulaziz Asiri on 11/15/18.
//  Copyright © 2018 Abdulaziz Asiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    // this is for pumpkin.

    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipCard(withEmoji: "🎃", on: sender)
    }
    
    // This is for ghost.
    @IBAction func touchCard(_ sender: UIButton) {
        print("Flip this emoji")
        // when clicked, pelease flip the card.
        flipCard(withEmoji: "👻", on: sender)
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

