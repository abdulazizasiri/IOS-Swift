// Classes:

class BlogPost {
    var title = ""
    var body = ""
    var author = ""
}

/// Creating a new instance of this class

var azizPost = BlogPost()

var abdulPost = BlogPost()


azizPost.title = "Swift"

abdulPost.title = "Swift"

print(azizPost===abdulPost)



// Inheritance 


class Cars {
    var topSpeed = 200
    var type = "Normal"
    
    func drive () {
        print("The type of the car is \(type) and its top speed is \(topSpeed)")
    }
    
}

class Toyota: Cars {
    var fly = true
    override func drive(){
        print("I am not any more a normal car")
    }
    
}

Toyota().drive()

