// Not yet
// Protocol syntax:

// you say, this class. strcuture is adopting or a certain protocol or confrom to a protocol. This means this clss/structure assigned a contract to implement all the methods, inside a protocols.√√√

// protocol is an essential component for the delegate pattern.

// There are three things: 1- defining , 2-adopting, 3- implementing

// Protocol syntax:


// Degining a protocol
protocol Souschef {
    func chop(vegetable: String) -> String
    func rinse(vegetable: String)  -> String
}


// Adopting a protocol: Adopting a protocol is done by using classes, enums or structures.
// this is done by using a colon opeator :

// After adopting, you need the class to conform to this
class Rommate : Souschef{
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
