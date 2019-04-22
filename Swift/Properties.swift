// Properties :

// TYpes of properties in swift.

//Stored properties
//Computed properties.

//
//Stored properties can be either variable stored properties (introduced by the var keyword) or constant stored properties (introduced by the let keyword).


// Can be given an initial value OR initilized during initilization .


// propoerties .


// There are three areas:
//
//1- Stored properties
//2- Computed  properties
//3- Observers


// Examples: This is example of stored properties

// This is an example of a calss that uses a dot notation to access its props:

class Person {
 // We intilized them with "IDK"
    var name:String?
    var age:Int?
}


class Blog {
    var title:String?
    var body = "hey"
    var author:Person?
    var comments = 0
}

let myBlog = Blog() // Creating an instances.

myBlog.author!.name = "Aziz"
myBlog.title = "This a blog about Sswift programming language"



// propoerties .


// Tjere are three areas:
//
//1- Stored properties
//2- Computed  properties
//3- Observers


// Examples: This is example of stored properties

// This is an example of a calss that uses a dot notation to access its props:

class Person {
 // We intilized them with "IDK"
    var name:String?
    var age:Int?
}


class Blog {
    var title:String?
    var body = "hey"
    var author:Person?
    var comments = 0
}

let myBlog = Blog() // Creating an instances.

myBlog.author!.name = "Aziz"
myBlog.title = "This a blog about Sswift programming language"



struct Employee {
    let name:String // Stored props using default value/
    var age: Int  // have not been given any default value. probabiliy during creation.
    
}
let emp = Employee(name: "Aziz", age: 10) // Stored props during initialization
emp.age = 22 // This is an error. since emp is constant with "let" 
// Another example: 
var emp2 = Employee(name: "Mike", age: 25) // Stored props during initialization
emp2.name = "Jack" // This is worng as well since name is constant. 


//  The above happens becuase structures are value-types, when we have a reference type things become different :) 


class Animal {
    var name:Int?
    var age:Int?
}

let animal = Animal()



animal.age = 12 // This is fine. Because classes are reference type.



 /// COMPUTER PROPERTY

struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Paoint(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}


var point = Point()
var pnt = Point()
point.x = 11
point.y = 11
var rect  = Rect()
rect.center = point
pnt = rect.center
print(pnt)


