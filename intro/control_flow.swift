import Foundation
// IF statments:

var x = 5;
var y = 6;

if (x > y) {
    print("x is greater than y")
} else if (x < y) {
    print("x is less than y")
} else {
    print("Equals")
}

//NOTE: Strings can use these operators in swift. They mean something different which is it checks if the string comes before another string alphabetically


//Comparison operators can also be used on strings. A string is “less than” another string if it comes first alphabetically:
//> greater than
//< less than
//>= greater than or equal to
//<= less than or equal to


var string1 = "apple"
var string2 = "orange"

if (string1 > string2 ) {
    print("apple comes second")
} else if (string1 < string2) {
    print("apple comes first")
} else {
    print("Equals")
}


let anotherAlphabeticalBool = "xerox" > "xylophone" // this is false because xerox comes first. os it should be < xylophone
print(anotherAlphabeticalBool);


// We can use logical operators to combine some logis such as && AND  , || OR. ! NOT




