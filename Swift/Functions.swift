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



// Function Type: 1- Assigning a function to different function which has the same function type. 
// 2- function type as a parameter to another function. 



// Function types
// All functions have their type.
// Function types are defined by the return type and the parameter type.




// ()-> ()
func sayHi(){
    print("Hi ")
}


// () -> ()

// both funciton are different, but they have the same type.
func multiplay(){
    print(2*5)
}


func addTwoInts (x:Int, y:Int) -> Int {
    return x + y
}

var mathFunction: (Int, Int) -> Int = addTwoInts


var y  = mathFunction(12,12)

print(y)

// Note: You can assign this mathfnction to some other different funciotn whcih has the same function type.

func mult (x:Int, y:Int) -> Int {
    return x * y
}
mathFunction = mult ;
var m = mathFunction(12,12)
print(m)

// Function type as parameters for another function.



func add (x:Int, y:Int, m:(Int,Int) -> Int) -> Int {
    return m(x,y) + (x+y)
}

var param = add(x: 5, y: 4, m: mult);

// param = 5+4 + 20 = 29

print(param)


var functionMath: (Int, Int, (Int,Int)->Int )  ->Int ;
functionMath = add
var o = functionMath(12,12,mult)

print(o)



// Function type as a returned type 

func printIt() ->  Void {
    print ("The number is \(y)")
}


func sub() -> () -> Void {
    return printIt
}
var returnedType = sub()
 returnedType()



// this is an amazing example which uses function type as a returned type.



func stepForward(input: Int) -> Int {
    return input + 1
}

func stepBackward(input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

let f = chooseStepFunction(backward: true)
print(f(12))

