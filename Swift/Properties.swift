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
