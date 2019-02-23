
import UIKit

var str = "Hello, playground"


protocol Ctyptcurrency {
    var name: String {get}
    var price: Int {get set}
    func showHistory()
    mutating func transfer()
    init(name: String)
}

struct Bitcoin: Ctyptcurrency {
    init(name: String) {
        self.name = name
        self.price = 0
    }
    
    var name: String
    
    var price: Int
    
    func showHistory() {
        print("Show history")
    }
    
  mutating func transfer() {
        print("Transffering BTC")
    }
    
    
}

class Ethereum: Ctyptcurrency {
    
    required init(name: String) {
        self.name = name
        self.price = 0 ;
    }
    
    var name: String
    
    var price: Int
    
    
    func showHistory() {
        print("Show history")
    }
    
    func transfer() {
        print("Transffering EtH")

    }
    
    
}


// Creating a protocol type.

let btc = Bitcoin(name: "BTC")
let eth = Ethereum(name: "ETH")

// Since we created Bitcoin and Ethereum conforming a protocol, then we can creat a type of Cryptocurrncy which can be set to vtc or eth

let crypto:Ctyptcurrency = btc // Anthing that adopt
print(crypto.name)

// We can create an array of type protocol:

var cryptoArray: [Ctyptcurrency] = [Ctyptcurrency]()
cryptoArray.append(btc)

cryptoArray.append(eth)

print(cryptoArray) // Note this will only work if your btc, eth objects adopted and conformed to a protocol. 
