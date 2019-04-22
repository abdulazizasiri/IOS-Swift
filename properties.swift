// Properties. This is an important topics in IOS/Swift.
// https://stormpath.com/blog/tutorial-build-rest-api-mobile-apps-using-node-js
class FixedLengthRange {
     var length: Int
    init(length: Int) {
        self.length = length
    }
}
var rangeOfThreeItems = FixedLengthRange( length: 3)
let newItem = rangeOfThreeItems
newItem.length = 114


//Stored Properties of Constant Structure Instances
// In classes above it does not matter. 
struct Fi {
    var height:Int
 }
var x = Fi(height: 100)
print(x.height) // 100
var y = x
y.height = 200
print(y.height) // 200
// Lazy property:
/*
 Lazy properties are useful when the initial value for a property is dependent on outside factors whose values are not known until after an instance’s initialization is complete. Lazy properties are also useful when the initial value for a property requires complex or computationally expensive setup that should not be performed unless or until it is needed.
 
 */


// Lazy property is helpful: It is used to set the stored property to values that Can be Extremely large, in this case, you do not want any storage happening during initialization. After initialization that is ok.




// Computed proptery

// """hey provide a getter and an optional setter to retrieve and set other properties and values indirectly.

import UIKit
struct BodyStarts {
    var heigh = 0 // stored prop
    var weight = 0
    var bmi:Int{// computed proptery.
        get {
            return  heigh * weight
        }
        set {
            heigh = newValue * 2 //Error
        }
    
    }
    
    var all:Int {
        get {
            return heigh
        }
        set(x){
            weight = x * 1000 ;
        }
    }
    
}

// read-Only computed property.



var body = BodyStarts(heigh: 188, weight: 100)
body.all = 12 // 12000
body.bmi


