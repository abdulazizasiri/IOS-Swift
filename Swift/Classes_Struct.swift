// apple example:


struct Resolution {
    var width:Int
    var height: Int
    mutating func eat() {
        width = 10
    }
    func change(){
        width = 10
    }
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
//     mutating func z() { mutating does not work on classes. only works on structures to change the props value via a function.
     
//     }
}


// Creating an instance
var someResolution = Resolution(width: 1, height: 1)
var someVideoMode = VideoMode()


// To access the properties of a class or a strcuture, we use the dot operator.

// Strucutre are value type: Things are copied:

var resolutionCopy = someResolution

resolutionCopy.height = 1000

// Each one has it own copy. No one has modiefed the others props.
print("some resolution\(someResolution)")
print("resolution copy \(resolutionCopy)")


// Classes are reference type. Which means when assigned  areference will be changed to the other variable.

var videModeReference = someVideoMode
videModeReference.frameRate = 1000

// REference types variable can mutate the props so be extra careful .

print("video mode original \(someVideoMode.frameRate)") // 1000
print("video mode Reference \(videModeReference.frameRate)") // 1000 


