// Starts with the word : func 

func add () -> Int {
return 2 + 2 
} 

// Adding a a return type is by using the arrow symbol: -> TYPE_RETURNED, ex: -> Int, -> String , -> Whatever 

// Passing parameters; it is a bit different. 

func add (from number: Int, and operand:Int) -> Int {
    return number + operand
}
// Note: froma and "and" are used externally when calling the function .

var x = add(from:10, and: 12)

print (x)


// One more topic: Function Types
// Every function has a specific function type, made up of the parameter types and the return type of the function.

// Examples: 

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

//The type of both of these functions is (Int, Int) -> Int. This can be read as:


func add (from number: Int, and operand:Int) -> Int {
    return number + operand
}
// Note: froma and "and" are used externally when calling the function .

var x = add(from:10, and: 12)

print (x)


func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

var mathFunction: (Int, Int) -> Int = addTwoInts
print(mathFunction(12,12))

// Pass it as a function parameters
func mathmetics (_ mathfunction:(Int, Int)-> Int, _ a:Int, _ b:Int , _ c:Int) -> Int {
    return mathFunction(a,b) + c
}



