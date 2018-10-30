import Foundation
var name: String = "Hello world"

let newString = name.replacingOccurrences(of:"H", with: "K"); // it does not change the actual string var, it creates a copy.

print(newString)
