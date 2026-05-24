struct Player {
    let number : Int
    let name : String?
}

var player : Player? = nil
let coach = player?.name?.first?.uppercased() ?? "Unknown"
print(coach)

