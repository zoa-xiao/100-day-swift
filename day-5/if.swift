let score = 85

if score >= 80 {
    print("good job")
}


let player1 = "Messi"
let player2 = "Ronaldo"

if player1 > player2 {
    print("\(player1) lebih hebat dari \(player2)")
}

if player1 < player2 {
    print("\(player2) lebih hebat dari \(player1)")
}

// note : Membandingkan satu string dengan string lain bukanlah proses yang cepat di bahasa pemrograman mana pun,


let userName = "ronaldo"
if userName.isEmpty {
    print("username tidak boleh kosong")
} else {
    print("username valid")
}


var siuu = 60
siuu = 75

if siuu >= 80 {
    print("good")
} else if siuu >= 60 {
    print("not bad")
} else {
    print("try harder")
}