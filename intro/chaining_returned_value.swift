
// functions in swift start with func
//: # Strings

import Foundation

// Chaining functions

func addExcitementToString(string: String) -> String {
    return string + "!"
}

let excitedString = addExcitementToString(string: addExcitementToString(string: "yay"))

print(excitedString)
let reallyExcitedString = addExcitementToString(string: addExcitementToString(string: addExcitementToString(string: addExcitementToString(string: "wahoo"))))
print(reallyExcitedString)
