var myvar : Int? = 3

if let ada = myvar {
    print("The value of myvar is \(ada).")
} else {
    print("myvar is nil.")
}

func greet(player: String?) {
    guard let playerName = player else {
        print("There is no player to greet.")
        return
    }
    print("Hello, \(playerName)!")
}

greet(player: nil)