//
//  ViewController.swift
//  ClickCounter
//
//  Created by Abdulaziz Asiri on 1/7/19.
//  Copyright © 2019 Abdulaziz Asiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var colors = ["red", "white", "black","purple", "orange", "yellow", "blue","pink","green"]
    var count = 0
    var label: UILabel!
    var label1:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let label =  UILabel()
        label.frame = CGRect(x:150, y:150, width:60, height:60);
        label.text = "0"
        self.label = label
        view.addSubview(label) // Added the UI element to the view.
        
        
        
        let label1 =  UILabel()
        label1.frame = CGRect(x:250, y:150, width:60, height:60);
        label1.text = "0"
        self.label1 = label1
        view.addSubview(label1) // Added the UI element to the view.
        
        // Button
        let button =  UIButton()
        button.frame = CGRect(x:150, y:250, width:60, height:60);
        button.setTitle("Click + ", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button) // Added the UI element to the view.
        button.addTarget(self, action: #selector(ViewController.increment), for: UIControl.Event.touchUpInside)
        
        
        let decrementButton =  UIButton()
        decrementButton.frame = CGRect(x:250, y:250, width:60, height:60);
        decrementButton.setTitle("Click - ", for: .normal)
        decrementButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(decrementButton) // Added the UI element to the view.
        decrementButton.addTarget(self, action: #selector(ViewController.decremnt), for: UIControl.Event.touchUpInside)
        
    }
    @objc func increment() {

        
  
        self.label.text = "\(self.count)"
         self.label1.text = "\(self.count)"
              view.backgroundColor =  UIColor.cyan
    }
    
    
    @objc func decremnt() {
        self.count-=1
        self.label.text = "\(self.count)"
        self.label1.text = "\(self.count)"
        view.backgroundColor =  UIColor(red: .random(in: 0...255),
                                        green: .random(in: 0...255),
                                        blue: .random(in: 0...255),
                                        alpha: 1.0)
    }


}

