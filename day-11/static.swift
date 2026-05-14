// Tanpa membuat instance

// struct player {
//     static let name = "ronaldo"
//     static let position = "striker"
//     static var number = 7
// }

// print(player.name)


struct player {
    let name : String
    let position : String
    var number = 7

    static let example = player(name: "ronaldo", position: "striker")
}

print(player.example.name)