
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
