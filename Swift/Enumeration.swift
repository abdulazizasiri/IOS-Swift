//  Enumeration
// Enumeration

//
//You introduce enumerations with the enum keyword and place their entire definition within a pair of braces:


// Best practice: Enums should be captiliazed
enum SomeEnumeration {
    // enumeration definition goes here
}


enum CompassPoint {
    case north
    case south
    case east
    case west
}

let dir = CompassPoint.east
print(dir)

//
//The values defined in an enumeration (such as north, south, east, and west) are its enumeration cases. You use the case keyword to introduce new enumeration cases.


// There is an important note on apple documenration about the difference between enums in swift and in other languages.

// NOTE Swift enumeration cases don’t have an integer value set by default, unlike languages like C and Objective-C. In the CompassPoint example above, north, south, east and west don’t implicitly equal 0, 1, 2 and 3. Instead, the different enumeration cases are values in their own right, with an explicitly defined type of CompassPoint.




// WE can also create  a multiple cases in one line


enum Planet {
    case mercury, venus,
    earth, mars, jupiter
    ,saturn, uranus,
    neptune
}

let onePlanet = Planet.mercury

print(onePlanet)




//Matching Enumeration Values with a Switch Statement

switch dir {
case .west:
    print("West")
    break
case .south:
    print("South")
    
case .north:
    print("North")
case .east:
    print("East")
    
}


// How to iterate on an enum. Finding the length

enum Days: CaseIterable {
    case m, t, w, th, f, s, sun
}

let s = Days.allCases
print(s.count)


// Iterating.

for i in s {
    print(i)
}


// OR


for day in Days.allCases {
    print(day)
}


// Associated values


// Since Barcode, can be either of the two format, we can define our enums as follows.
// One of an associated value: (Int,Int, Int, Int) type
// The other one of type: (String)
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}


var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = Barcode.qrCode("ABCDEFGHIJKLMNOP")



switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}


///Raw Values

enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}
