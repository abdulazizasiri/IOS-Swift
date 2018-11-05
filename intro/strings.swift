let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("Counting characters \(unusualMenagerie.count)") // Get the count

var myString = "Hello"
var charactersArray = Array(myString.characters) // Change   a string to an array of characters.
charactersArray[0] = "A"
var newString:String? = String(charactersArray) // change an array of characters to a string,
if let newString = newString {
print(newString)
}

var greeting = "Guten Tag!"
greeting[greeting.startIndex] // G



greeting[greeting.index(before: greeting.endIndex)] // !

// This is ridiculous



// Finding the Index.
let index = greeting.index(greeting.startIndex, offsetBy: 0)

// Mutating the Index.
greeting.insert("A", at: greeting.index(greeting.startIndex, offsetBy: 1))

print(greeting)
