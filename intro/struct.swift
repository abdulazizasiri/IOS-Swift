// Structs in swift.

struct PictureFrame {
    var width = 5
    var height = 7
    var thickness: Double = 1.5
    
    var area:Int {
        get {
            return width * height
        }
    }
}


var graduations = PictureFrame(width: 10, height: 8, thickness: 1.5)
// Copying does not affect the main source. 
graduations.width
var family = graduations
family.width = 22

graduations.width
