// Optionals are a ways to give a var/let two values. But, We do not know which one will be.

// 1- If it happens to be the actual value then You must unwrap it in order to use it.

// 2- It becomes nill. No value found. 

// Examples

let possibleNumber = "123"
let convertedNumber:Int? = Int(possibleNumber) // Int() retuens an optional Int. 

// 1- One way to check if ther exist a value if by using: Force unwrapping.
// Note: You must use ! to force it.
if convertedNumber != nil {
    print("Force unwrapping \(convertedNumber!)")
}


//2- Second way is to use. Optional Binding. We do not have to use ! to force. This if statement does the job perfectly. 
if var value = convertedNumber {
    print("Optional binding \(value)")
}




// 3- This is a dangerous way to do it. It is called Implicit unwrapping. This one used mostly with classes.
// You should know that there exist a value in the optional. 
// It uses !

var va: Int! = 10
let vv:Int = va
print("Value is \(vv)")


// Whereas if we use ? then you must add exclamation mark to the optional.

let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation mark
print("Forced String \(forcedString)")
