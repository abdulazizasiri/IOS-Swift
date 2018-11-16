class Product {
    var price:Int {
        willSet {
            print("Price is will be set. it is now \(price)")
        }
        didSet {
             print("Price has changed to \(price)")
        }
    }
    init(){
        price = 10
    }
}


let v = Product()
v.price = 200


v.price = 1000
