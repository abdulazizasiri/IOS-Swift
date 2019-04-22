// Protocol syntax:

// you say, this class or strcuture is adopting or a certain protocol confroms to a protocol. This means that this clss/structure assigned a contract to implement all the methods inside a protocols.√√√

// protocol is an essential component for the delegate pattern.

// There are three things: 1- defining , 2-adopting, 3- implementing

// Adopting a protocol is like signing a contract  to implement every method on the list.

// Protocol syntax:


// Degining a protocol. This is the
protocol Souschef {
    func chop(vegetable: String) -> String
    func rinse(vegetable: String)  -> String
}


// Adopting a protocol: Adopting a protocol is done by using classes, enums or structures.
// this is done by using a colon opeator :

// After adopting, you need the class to conform to this protocol. conforming is the idea of implmenting everything you signed up for in this case it is the (methods)
class Rommate : Souschef, Equatable{
    var hungry = true
    var name: String
    // When conforming to a certain protocol, then you need to implement all of its methods.
    init(hungry: Bool, name:String) {
        self.hungry = hungry
        self.name = name
    }
    func chop(vegetable: String) -> String {
        return vegetable
    }
    func rinse(vegetable: String) -> String {
        return vegetable
    }

    
}
// Why do we implmnet it outside of its class.
// Why implment this outisde of the class is because operator is global functions.
func ==(lhs:Rommate, rhs:Rommate)-> Bool {
    return lhs.name == rhs.name && lhs.hungry == rhs.hungry ;
}
