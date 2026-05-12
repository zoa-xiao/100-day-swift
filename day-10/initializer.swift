struct Player { 
    let name : String
    let number : Int

    init(name: String) {
        self.name = name
        number = Int.random(in : 1...99)
    }
}

// extension Player {

    
// }

let player = Player(name: "Ronaldo")
print(player.number)