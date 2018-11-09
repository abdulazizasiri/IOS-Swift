class Person {
    var name:String?
    var age:Int?
    
    init(name:String?, age:Int?) {
        self.name = name
        self.age = age
    }
    
}
func name() {
var person = Person(name: nil, age: 123)

    // personName is accessible in the whole function body.
guard let personName = person.name else {
    print("Name is not defined")
    return
}
    print("The name is \(personName)")
    
    // Better than
     // personName2 is accessible Only inside the if let. Outside usage require force unwrapping.
    if let personName2 = person.name {
        print(personName2)
    } else {
        print("Name is not there")
    }
    



}

name()

// Two benefits of using guard let vs if let for optional unwrapping. 

// 1- If you have a class with many optionals, then you want to to do optional wrapping, then we will end up with many nesting blocks.
// the run time can lead to O(n*n)

// 2- The scope of guard to use without force unwrapping is the whole function. The scope of if let is ONLY the block where you define the the block of if let
