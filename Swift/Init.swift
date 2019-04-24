// Initilization

// Designated initializers

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
    // convenience can only call desingated within the same class.
    convenience init(){
        self.init(name:"Monkey", age:15)
        print(self.name)
        
    }
    
}



class Vehicle {
    var numberOfWheels = 0
    var description: String {
        return "\(numberOfWheels) wheel(s)"
    }
    init(){
        print("Suoer")
    }
    init(num: Int){
        
    }
}


// This is valid. Since designated is calling a designated cinstructor.
//
//print("Vehicle: \(vehicle.description)")
//// Vehicle: 0 wheel(s)


class Bicycle: Vehicle {
    override init() {
        super.init()
        print("Sub")
        numberOfWheels = 2
    }
}
let vehicle = Vehicle()

let b = Bicycle()

// This is valid. Since designated is calling a designated cinstructor.

print("Vehicle: \(vehicle.description)")
// Vehicle: 0 wheel(s)


// Failable init. You can return nil
struct Robot {
    let species: String
    init?(species: String) {
        if species.isEmpty { return nil }
        self.species = species
    }
}


// Required init.

class SomeClass {
    required init() {
        // initializer implementation goes here
    }
}

class SomeSubclass: SomeClass {
    required init() {
        // subclass implementation of the required initializer goes here
    }
}


