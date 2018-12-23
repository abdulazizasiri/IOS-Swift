
// Function that will take a closure.
// Example 1
func filterWithclosure (closure: (Int) -> Bool, numbers:[Int])->[Int] {
    var filterNums = [Int]()
    for num in numbers {
        if closure(num) {
            filterNums.append(num)
        }
    }
    return filterNums
}

var filterList = filterWithclosure(closure: {(num) -> Bool in
    return num < 5
    
}, numbers: [1,2,3,4,5,6,10])


//print(filterList)

// Example 2 for understanding it better.

// Clousre for mutipling every number in a a list

// [1,2,3,4,5] ==> [1,4,9,16,25]

func changeWithClosure (closure: (Int) -> Bool, numbers:[Int]) -> [Int] {
    var nums = [Int]()
    for num in numbers{
        if closure(num) {
            nums.append(num)
        }
    }
    return nums
}

func closureFunction(num:Int) -> Bool {
    return num > 2
}

var newList = changeWithClosure(closure:closureFunction, numbers: [1,2,3,4,5])


print(newList)

var nums = [1,2,3,4,5,6,7,8,9,10]

let filterArr =



// Another example

var sumOfTwo: (Int, Int) -> (Int) = {x, y in return x+y}


var hello: () -> String = { return "Hello world"}
sumOfTwo(12,12)
print(hello())


// Capturing values
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

var x = makeIncrementer(forIncrement:10)
print(x()) // 10
print(x()) // 20 
print(x()) // 30 

var xx = makeIncrementer(forIncrement:10)

print(xx())
