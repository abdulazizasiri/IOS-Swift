//
//  ViewController.swift
//  ClickCounter
//
//  Created by Abdulaziz Asiri on 1/7/19.
//  Copyright © 2019 Abdulaziz Asiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let label =  UILabel()
        label.frame = CGRect(x:150, y:150, width:60, height:60);
        label.text = "0"
        self.label = label
        view.addSubview(label) // Added the UI element to the view.
        
        
        // Button
        let button =  UIButton()
        button.frame = CGRect(x:150, y:250, width:60, height:60);
        button.setTitle("Click ", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button) // Added the UI element to the view.
        button.addTarget(self, action: #selector(ViewController.increment), for: UIControl.Event.touchUpInside)
        
    }
    @objc func increment() {
        self.count+=1
        self.label.text = "\(self.count)"
    }


}

