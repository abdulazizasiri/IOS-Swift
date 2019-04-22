// Automatic Reference Counting
class Person {
    let name: String
    var coursr:Course?
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("This perosn nmaed \(name) is being deinitialized")
    }
}

class Course {
    unowned var name:Person
    
    var subject: String
    init (subject:String, person:Person){
        self.subject = subject
        self.name = person
         print("\(subject) is being initialized")
    }
    deinit {
        print(" The course \(subject) is being deinitialized")
    }
}



//var name:Person? = Person(name:"Aziz")
//var course:Course? = Course(subject:"Math",person:name!)

//course = nil
// Weak references was explained.


// Closure
class HTMLElement {
    
    let name: String
    let text: String?
    
    lazy var asHTML: () -> String = {
        [unowned self] in
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            
            return "<\(self.name) />"
        }
    }
    
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
    
}
// This creates a a string reference
var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello, world")
print(paragraph!.asHTML())


paragraph = nil
