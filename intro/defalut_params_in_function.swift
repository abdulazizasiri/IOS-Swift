// functions in swift start with func
//: # Strings

import Foundation

// defalut values as in swift for function parameter

func average(items: [Int] = [10,20,30]) -> Int {
    var sum = 0 ;
    for i in items {
        sum += i;
    }
    var res = sum/items.count
    return  (res)
}

var i = [1,2,3,4,5,6,7]; 
let res = average();


print(res)
