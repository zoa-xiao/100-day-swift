// func buatArr(size : Int, using generator : () -> Int) -> [Int] {
//     var arr = [Int]()

//     for _ in 0..<size {
//         let newNumber = generator()
//         arr.append(newNumber)

//     }
//     return arr
// }

// let panggil = buatArr(size:10) {
//     Int.random(in: 1...100)
// }

// print(panggil)


// contoh 2
func doImportantWork(first : () -> Void, second : () -> Void, third : () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
}

let panggil = doImportantWork {
    print("hel")
} second: {
    print("lo")
} third: {
    print("world")
}