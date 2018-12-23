// Access control
//
//  Access.swift
//  Access
//
//  Created by Abdulaziz Asiri on 11/9/18.
//  Copyright © 2018 Abdulaziz Asiri. All rights reserved.
//

import Foundation
// This will have the 5 access control


// This is like wekepdia: All the world can see it
open class OpenClass {
    func doSomethingImplicitily() {
        
    }
    open func doSomethingExplicity(){
    
    }
}

// twitter: Everyone can see your class, but they can it manage it.
public class PublicClass {
    func doSomethingImplicitily() {
        
    }
    
   public func doSomethingExplicity(){
        
    }
}


// private account on Instaram: Only specifed people can see it.They also cannt manage it either.
internal class InterClass {
    var fp:OpenClass?
    init(fp:OpenClass){
        self.fp = nil
    }
    func doSomethingImplicitily() {
        
    }
   internal func doSomethingExplicity(){
        
    }
}

// Same as above.
class ImplicitClassInternal {
    func doSomethingImplicitily() {
        
    }
    internal func doSomethingExplicity(){
        
    }
}
// Personal Journal: You are peroanlly can manage the journal, but others cant see it
fileprivate class FilePrivateClass {
    func doSomethingImplicitily() {
        
    }
    
   fileprivate func doSomethingExplicity(){
        
    }
}

// deepest dark secret: No one can see it.
private class PrivateClass {
    func doSomethingImplicitily() {
        
    }
    open func doSomethingExplicity(){
        
    }
    
  
}


// Test access control in swift.

func accessStuff() {
    // All of these will work just fine. IT is on the same file. 
    let myOpen = OpenClass()
    print(myOpen.doSomethingImplicitily()) // Normal function works. in the same file
    myOpen.doSomethingExplicity()
    
    let myPublic = PublicClass()
    print(myPublic.doSomethingImplicitily()) // Normal function works. in the same file
    myPublic.doSomethingExplicity()
    
    let myInternal = InterClass()
    print(myInternal.doSomethingImplicitily()) // Normal function works. in the same file
    myInternal.doSomethingExplicity()
    
    let myImplicit = ImplicitClassInternal() // Normal function works. in the same file
    print(myImplicit.doSomethingImplicitily())
    myImplicit.doSomethingExplicity()
    
    // Those can work here. In the same file.
    let myFilePrivate = FilePrivateClass() // Normal function works. in the same file
    print(myFilePrivate.doSomethingImplicitily())
    myFilePrivate.doSomethingExplicity()
    
    let privateFile = PrivateClass()
    print(privateFile.doSomethingImplicitily()) // Normal function works. in the same file
    privateFile
}




