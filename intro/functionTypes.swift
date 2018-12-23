// Functions


//func changeNumber(var num: Int) {
//    num = 2
//    print(num) // 2
//    print(num1) // 1
//}
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
var mathFunction: (Int, Int) -> Int = addTwoInts




print("Result: \(mathFunction(2, 3))")
//var x = [10,11]
//withUnsafePointer(to: &x) {
//    print(" str value \(x) has address: \($4)")
//}
