// Swift handling errors
// Handling errors

enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}
// After an error has been thrown

// There are four ways to handle the thrown errors

// try callung a funtion that throws errors. try keyword


// To make a functon throws an error: Write  the word throws in the func declaration.
//
//A function marked with throws is called a throwing function. If the function specifies a return type, you write the throws keyword before the return arrow (->).


// Throws will propoagte the error to the sender of the function



// Note:
//Only throwing functions can propagate errors. Any errors thrown inside a nonthrowing function must be handled inside the function
struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0
    
    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        
        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }
        
        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        
        coinsDeposited -= item.price
        
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Dispensing \(name)")
    }
}

let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels",
]


// any function that throws. Must be handled using do try cathc block

var obj:VendingMachine = VendingMachine()
do {
    try obj.vend(itemNamed: "Pretzels")
}catch {
    print(error)
}


// Another example:

enum LoginError: Error {
    case EmptyFields
    case PasswordIsShort
    
}

class User {
    var email:String?
    var password:String?
 
    init(from email:String, hide password:String){
        self.email = email
        self.password = password
    }
    // function that throws an error
    func login() throws {
        let email = self.email!
        let password = self.password!
        
        
        if email.isEmpty || password.isEmpty {
            throw LoginError.EmptyFields
        }
        if password.count < 8 {
            throw LoginError.PasswordIsShort
        }
    }
}


var user:User = User(from:"aziz-_-@hotmail.com", hide:"123456789")
 // Since the function is throwing errors then we need to call it differently. We need to check if the error does not happen.


do {
    try user.login()
    print("Everything is just fine")
} catch LoginError.PasswordIsShort {
    print("Password is too short")
} catch LoginError.EmptyFields {
    print("Some fields are empty.")
} catch {
    print("Someting went wrong")
}
