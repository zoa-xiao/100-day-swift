struct footballPlayer {
    let name : String
    let position : String
    var number : Int

    mutating func changeNumber(newNumber : Int) {
        number  = newNumber
    }
}

var player1 = footballPlayer(name:"Ronaldo", position: "Striker", number: 7)
print(player1.number)

player1.changeNumber(newNumber: 9)
print(player1.number)