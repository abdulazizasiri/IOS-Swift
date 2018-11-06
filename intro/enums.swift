// Enum: Defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code. // apple docs

// You have to have a raw type in order to assign value to enums values.

// this two.
enum primaryColor:Int {
    case red = 12
    case yellow = 1
    case blue = 14
}

// this one having a shorter syntax
enum Aunties {
    case Aime, Billie, Diane, Gail, Janie, Pam
}

// Enum having integers values. They can take any type.

enum AmericanLeague: String {
    case As = "Oakland"
    case Astros = "Houston"
    case Angeles = "Los Angeles"
    case Mariners = "Seattle"
    case Rangers = "Arlingon"
}


// Access an enum
print(AmericanLeague.As.rawValue)

enum Direction {
    case North
    case South
    case East
    case West
}

let dir = Direction.East

switch dir {
case .North:
    print("Forward")
case .South:
     print("Go backwards")
case .East:
    print("Go Right")
case .West:
    print("Go Ledt")
default:
    print("Nothing")
}

// Associated values:

enum Values {
    case Code(String)
    case Password(String)
    case Birth(Int, Int,Int)
}


var code = Values.Code("Swift")
print(code)


