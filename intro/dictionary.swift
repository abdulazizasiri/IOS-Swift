var dict = [Int:Int]()
dict = [12:12,11:10,98:90]
// or

var dict2 = ["Aziz numbers":12,"Favorite number":10,"Best number":90]

print(type(of: dict2))

// Adding items to dictionary.
// Adding items is easy

dict2["age"] = 28

print(dict2)

// Removing from a dictionary

dict2["age"] = nil
print(dict2)

dict2["Aziz numbers"] = 100
// 
var newDict = dict2.updateValue(100, forKey: "age")

if let newDict = newDict {
    
} else {
    print("No found the dictionary")
}
