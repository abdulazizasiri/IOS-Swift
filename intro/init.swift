// Class inheritance and Initialization
//There re two type of initializers

//1 - Desingated initializer:


// syntax

//init(parameters) {
//    statements
//}


//convenience initializer

// syntax

//convenience init(parameters) {
//    statements
//}


class Person {
    var name:String
    var gender:Character
    
    init(name:String, gender:Character) {
        self.name = name
        self.gender = gender
    }
    convenience init(){
        var x = 12
        
        self.init(name:"Aziz", gender:"M")
    }
}




