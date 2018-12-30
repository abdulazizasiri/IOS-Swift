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

