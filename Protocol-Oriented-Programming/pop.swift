// protocols in general

protocol CryptoCurrency {
    var name:String {get}
    var price: Int {get set}
    func showHistroy() -> Void
    mutating func changeBit()
    init(name:String)
    
}

struct Bitcoin:CryptoCurrency {
    var name: String
    
    var price: Int
    func showHistroy() {
        print("Bitcoin history")
    }
    
   mutating func changeBit(){
        print("We are changing bits")
    }
    
      init(name:String){
        self.name = name
    }
}
class Ethereum:CryptoCurrency {
    
    var name: String
    
    var price: Int
    init(name: String, price: Int){
      self.name = name
      self.price = price
    }
    func showHistroy() {
        print("Eth history")
    }
    
    func changeBit(){
        print("We are changing bits")
    }
   required init(name:String){
        self.name = name
    }
}
