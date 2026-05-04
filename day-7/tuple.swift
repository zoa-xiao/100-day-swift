func getUser() -> (name: String, age: Int) {
    ("Ronaldo", 38)
}

let (name, _) = getUser()
print("Name: \(name)")