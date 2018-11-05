// Set


// One way for constructing a set.
var set:Set = ["fork","knife", "spoon"]

var trees = Set <Character>()

trees.insert("🌲")
trees.insert("🌳")
trees.insert("🌴")
trees.insert("🎄")
trees.insert("🎋")

trees.remove("🌴")

for i in trees{
    print(i, terminator:" ")
}
