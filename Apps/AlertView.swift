  //
//  ViewController.swift
//  cameraRoll
//
//  Created by Abdulaziz Asiri on 1/13/19.
//  Copyright © 2019 Abdulaziz Asiri. All rights reserved.
//func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil)

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    let simpleClosure = {
        print("Hello, World!")
    }
    @IBAction func experiment(_ sender: UIButton) {
        let image = UIImage() // Image we need to store.
        let conteoller =
            UIActivityViewController(activityItems: [image], applicationActivities: nil)
        let nextController = UIImagePickerController();
        
        
        // We need to learn how to dismiss this view.
        
        let alertView = UIAlertController()
        alertView.title = "Test"
        alertView.message = "This is a test"
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { action in  self.dismiss(animated: true, completion: nil)
            
        }
        alertView.addAction(okAction)
        present(alertView, animated: true, completion: simpleClosure)
    }
    
}

