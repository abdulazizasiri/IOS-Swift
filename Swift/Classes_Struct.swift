
// apple example:

// Creating a structure using the strcuct keyword. 
struct Resolution {
    var width:Int
    var height: Int
}
class VideoMode {

    var interlaced:Bool
    var frameRate: Int
    var name: String
    
//    If not default intimidation given to the props, then initialize them inside an init
    init(){
        self.frameRate = 0
        self.interlaced = false
        self.name = ""
    }
}


// Creating an instance
let someResolution = Resolution(width: 1, height: 1)
let someVideoMode = VideoMode()


// To access the properties of a class or a strcuture, we use the dot operator.


