// func angkaRandom() -> Int {
//     Int.random(in: 1...10) // bolhe tidak menggunkaan return asal satu baris
// }

// print(angkaRandom())


// func greet(name: String) -> String {
//     if name == "Taylor Swift" {
//         "Oh wow!"
//     } else {
//         let greeting = "Hello, \(name)"
//         return greeting
//     }
// }

func nilai(int: Int) -> String {
    let kata = if int > 5 {
        "angka lebih besar dari 5"
    } else {
        "angka lebih kecil dari 5"
    }
    return kata
}

print(nilai(int: 3))