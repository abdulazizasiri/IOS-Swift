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
