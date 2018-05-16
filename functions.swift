// functions in swift start with func
//: # Strings

import Foundation

func average (item: [Int]) -> Int {
    var sum = 0 ;
    for i in item {
        sum+=i
    }
    return sum / item.count
}


var items = [1,2,3,4,5];
var result = average(item: items)

print(result);
