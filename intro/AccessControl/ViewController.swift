//
//  ViewController.swift
//  Access
//
//  Created by Abdulaziz Asiri on 11/9/18.
//  Copyright © 2018 Abdulaziz Asiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myOpen = OpenClass()
        print(myOpen.doSomethingImplicitily())
        
        
        let myPublic = PublicClass()
        print(myPublic.doSomethingImplicitily())
        
        
        let myInternal = InterClass()
        print(myInternal.doSomethingImplicitily())
        
        
        let myImplicit = ImplicitClassInternal()
        print(myImplicit.doSomethingImplicitily())
        
        // Error because it is of access control type fileprivate
//        let myFilePrivate = FilePrivateClass()
//        print(myFilePrivate.doSomethingImplicitily())
//        
//        
//        // Error because it is of access control type private
//        let privateFile = PrivateClass()
//        print(privateFile.doSomethingImplicitily())
        
        
    }


}

