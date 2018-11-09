// Protocols


// protocol syntax

protocol SomeProtocol {
    // protocol definition goes here
    var name: String {get }
}


// adopting a protocl

struct SomeStructure: SomeProtocol {
    // structure definition goes here
    var name:String // Conform to protocl SomeProtocol
}

class SomeSuperclass {
    init(){
        
    }
}
// Class whihc has a super class and a protocol

//class SomeClass: SomeSuperclass, SomeProtocol {
//    // class definition goes here
//    var name:String // Conform to protocl SomeProtocol
//
//}

// Protocl whihc states that there are two props whihc inidates one to be gettable and settable and a gettable (read-only)
protocol SomeProtocol2 {
    var mustBeSettable: Int { get  }
    func printName () -> Void
    var doesNotNeedToBeSettable: Int { get }
}


var x = SomeStructure(name:"Aziz")
x.name = "Faisal"

