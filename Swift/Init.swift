// UIKIT: A set of classes that are respoinsble to make ios app user interface
// IT is responsible for building the view. √


// initilizers in swift is a big topic:


/*
 
 Class inheritance and Initialization
 Failable initialization
 Required initialization
 
 */


//  Note: The biggest role in initilizrs is the idea that setting initial values for instance variables (of course if they are not set to a default value)


// Mutiple initilizers in the same class. They differ in the number of parameters

class Person {
    var name: String?
    var age: Int?
    init(name: String, age:Int) {
        self.name = name
        self.age = age
    }
    init() {
        self.name = ""
        self.age = 0
    }
}

var person = Person(name: "Aziz", age:28)
person.name
person.age

var person2 = Person(name: "Abdul", age:25)


person2.age


var p = Person()
p.name
p.age


// 

class Animal {
    var name: String
    var age: Int
    init(name: String, age:Int) {
        self.name = name
        self.age = age
    }
    
    convenience init(){
        self.init(name:"Monkey", age:15)
        print(self.name)
        
    }
    
}
