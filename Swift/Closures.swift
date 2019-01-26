// Closures + Functional prgoamming + Function types + higher order functions + nested function

/*
 Closures are self-contained blocks of functionality that can 
be passed around and used in your code. Closures in Swift are similar to blocks in C and Objective-C and to lambdas in other programming languages.
 */


// Closures + Functional prgoamming + Function types + higher order functions + nested function


// Reference: Apple Docs: https://docs.swift.org/swift-book/LanguageGuide/Closures.html
/*
 Closures are self-contained blocks of functionality that can be passed around and used in your code. Closures in Swift are similar to blocks in C and Objective-C and to lambdas in other programming languages.
 */


//losures can capture and store references to any constants and variables from the context in which they are defined. This is known as closing over those constants and variables. Swift handles all of the memory management of capturing for you.
//


/*
 Closures can be one of these forms
 
 
 1- Global functions are closures that have a name and do not capture any values.

 2- Nested functions are closures that have a name and can capture values from their enclosing function.

 
 3- Closure expressions are unnamed closures written in a lightweight syntax that can capture values from their surrounding context.
 */


/*
 
 
 Closure expression
 
 Closure expressions are a way to write inline closures in a brief, focused syntax. Closure expressions provide several syntax optimizations for writing closures in a shortened form without loss of clarity or intent. The closure expression examples below illustrate these optimizations by refining a single example of the sorted(by:) method over several iterations, each of which expresses the same functionality in a more succinct way.

 
 // Synatc optimization: Shorter code.
 */


// Using sorted(by: ). Using a function implmentation.

var names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]


func sortName (first str1:String, second str2:String) -> Bool {
    return str1 < str2
}

let y = names.sorted(by: sortName)

// This creates a copy not chagning the actual array. It fits perfectly with
print(names)
// After mutating
print(y)

// Sorted using am inline closure.

// its syntax:


//{ (parameters) -> return type in
//    statements
//}

//This is the syntax for an inline closure wihout creating an extra function.

var z = names.sorted(by:{ (s1: String, s2:String)-> Bool in
    return s1 < s2
    
})

print("This is the inline way \(z)")


// Again the strucutre of the inline closure: ..HOF(ALLPARAMETERS LOCAL: {()->Bool in
/*
 .
 .
 .
 .
 .
 .
 .
 
 return ////
 */
//})

// Closures + Functional prgoamming + Function types + higher order functions + nested function


// Reference: Apple Docs: https://docs.swift.org/swift-book/LanguageGuide/Closures.html
/*
 Closures are self-contained blocks of functionality that can be passed around and used in your code. Closures in Swift are similar to blocks in C and Objective-C and to lambdas in other programming languages.
 */


//losures can capture and store references to any constants and variables from the context in which they are defined. This is known as closing over those constants and variables. Swift handles all of the memory management of capturing for you.
//


/*
 Closures can be one of these forms
 
 
 1- Global functions are closures that have a name and do not capture any values.

 2- Nested functions are closures that have a name and can capture values from their enclosing function.

 
 3- Closure expressions are unnamed closures written in a lightweight syntax that can capture values from their surrounding context.
 */


/*
 
 
 Closure expression
 
 Closure expressions are a way to write inline closures in a brief, focused syntax. Closure expressions provide several syntax optimizations for writing closures in a shortened form without loss of clarity or intent. The closure expression examples below illustrate these optimizations by refining a single example of the sorted(by:) method over several iterations, each of which expresses the same functionality in a more succinct way.

 
 // Synatc optimization: Shorter code.
 */


// Using sorted(by: ). Using a function implmentation.

var names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]


func sortName (first str1:String, second str2:String) -> Bool {
    return str1 < str2
}

let y = names.sorted(by: sortName)

// This creates a copy not chagning the actual array. It fits perfectly with
print(names)
// After mutating
print(y)

// Sorted using am inline closure.

// its syntax:


//{ (parameters) -> return type in
//    statements
//}

//This is the syntax for an inline closure wihout creating an extra function.

var z = names.sorted(by:{ (s1: String, s2:String)-> Bool in
    return s1 < s2
    
})

print("This is the inline way \(z)")


// Again the strucutre of the inline closure: ..HOF(ALLPARAMETERS LOCAL: {()->Bool in
/*
 .
 .
 .
 .
 .
 .
 .
 
 return ////
 */
//})


//  in keywords: in means This keyword indicates that the definition of the closure’s parameters and return type has finished, and the body of the closure is about to begin.



// 2- Inferring Type From Context:



// This is inferring the type of parameters.

// This is amazing: reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )

// Let's use the example that inferr the [aramerer type


// No parettheses

names.sorted(by: {s1, s2 in return s1 > s2})


//4- Implicit Returns from Single-Expression Closures

//We can omit the the return type.

let xx = names.sorted(by: {s1, s2 in s1 < s2} )


print(xx)


let yu = names.sorted(by: {s1, s2 in
     s1 > s2
})

// Last type: argument name: $0, $1 $2 $3 $4  // These refer to the parameter number.

var returned = names.sorted(by: {$0 < $1})
print(returned)


// This is how we use trailing closure expression.
let trainling = names.sorted() {s1,s2 in
    s1 > s2
}

let trailing2 = names.sorted() {
    $0 < $1
}




// Trainling function. 

