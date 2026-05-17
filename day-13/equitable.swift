func getRandomNumber() -> Int {
    Int.random(in: 1...100)
}

func getRandomBool() -> Bool {
    Bool.random()
}

print(getRandomNumber() == getRandomBool())