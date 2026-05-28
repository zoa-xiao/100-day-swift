// // konstanta dan variable
// var name  = "ronaldo"
// let number = 7
// print(name)
// print(number)

// // string
// let keeper = "messi"
// print("\(keeper) bukan seorang penjaga gawang")

// let qoute = """
//     Ronaldo merupakan seorang striker,
//     sedangkan Messi merupakan seorang pemain sayap.
//     """
// print(qoute.count)
// print(qoute.hasPrefix("Ronaldo"))
// print(qoute.hasSuffix("Ronaldo"))

// // int 
// let score = 100
// let tambahScore = score + 10

// let angkaAcak = Int.random(in: 1...100)
// print(angkaAcak)

// // boolean
// var isRonaldo = true
// isRonaldo.toggle()
// print(isRonaldo)


// //array
// var players = ["roanldo", "messi", "neymar"]
// players.append("mbappe")
// print(players)
// print(players[0])

// let arr = [string]()

// // kamus / dictionary
// let player : [String : Any] = [
//     "name" : "Ronaldo",
//     "position" : "Striker",
//     "number" : 7
// ]

// print(player["name"] ?? "Unknown")

// if let number = player["number"] {
//     print(number)
// }

// print(player["position", default: "Unknown"])

//set
// var numbers  = Set(["one", "two", "three", "one"])
// print(numbers.contains("three"))


// enum
// enum Hari {
//     case senin, selasa, rabu, kasim, jumat, sabtu, minggu
// }

// var day = Hari.senin
// day = .jumat
// print(day)

// var hariHari: Hari = .senin



// switch

// enum cuaca {
//     case cerah, hujan
// }


// var kondisi = cuaca.hujan
// switch kondisi  {
//     case .cerah:
//         print("cuaca sedang cerah")
//     case .hujan:
//         print("cuaca hujan")
// }


// ternary
// let name = "messi"
// var IsRonaldo = name == "Roanldo" ? true : false
// print(IsRonaldo)

// for-loop

// let os = ["iOS", "macOS", "tvOS", "watchOS"]
// for os in os {
//     print(" - \(os)")
// }

// fungsi
// func printTimesTables(number : Int) {
//     for i in 1...number {
//         print(i)
//     }
// }

// print(printTimesTables(number: 7))


// mengembalikan banyak fungsi
// func getUser() -> (name : String, number : Int) {
//     return (name: "ronaldo", number: 7)
// }

// let (name, number) = getUser()
// print(name)
// print(number)


// menangai kesalahan dalam fungsi
// enum PasswordError: Error {
//     case pandek, mudah
// }

// func cekSandi(sandi Katasandi : String) throws -> String {
//     if Katasandi.count < 5 {
//         throw PasswordError.pandek
//     }

//     if Katasandi == "12345" {
//         throw PasswordError.mudah
//     }
//     return "OK"
// }

// print(try? cekSandi(sandi: "12345"))


//closure
// let sayHello = {
//     print("Hello")
// }

// sayHello()


// let playerNumbers = {(name: String) -> String in
//     "hi \(name)"
// }


// print(playerNumbers("ronaldo"))

// let team = ["ronaldo", "Neymar", "Messi"]

// let onliR = team.filter { $0.hasPrefix("r")  }
// print(onliR)

// struct 
// struct Album {
//     let title : String
//     let artist: String
//     var isReleased = true

//     func printSummary() {
//         print("\(title) by \(artist)")
//     }

//     mutating func toggleReleased() {
//         isReleased.toggle()
//     }
// }

// var red = Album(title:  "Red", artist: "Taylor Swift")
// print(red.isReleased)
// red.printSummary()
// red.toggleReleased()
// print(red.isReleased)


// computed property



// struct Employed {
//     let name: String
//     var vacationAllocated = 14
//     var vacationTaken = 0

//     var vacationRemaining: Int {
//         get {
//             vacationAllocated - vacationTaken
//         }

//         set {
//             vacationAllocated = vacationTaken + newValue
//         }
//     } 
// }

// var employ1 = Employed(name: "Ronaldo")
// print(employ1.vacationAllocated)
// employ1.vacationRemaining = 5
// print(employ1.vacationRemaining)




// property observer / pengamat

// struct Game {
//     var score = 0 {
//         didSet { // dijalankan setelah nilai diubah
//             print("Score is now \(score)")
//         }
//         willSet { // dijalankan sebelum nilai diubah
//             print("Score will be \(score)")
//         }
//     }
// }

// var newGame = Game()
// newGame.score += 10


// inisialisasi khusus
// struct Player {
//     let name : String
//     let number : Int

//     init(name:String) {
//         self.name = name
//         number = Int.random(in : 1...99)
//     }
// }

// var player1 = Player(name: "ronaldo")
// print(player1.number)



// kontrol akses

//private
//private(set) -> di luar struct dapat membaca tapi tidak meangubah
//fileprivate
//public
// struct BankAccount {
//     private(set) var founds = 0

//     mutating func deposit(amount: Int) {
//         founds += amount
//     }

//     mutating func withdraw(amount : Int) -> Bool {
//         if founds >= amount {
//             founds -= amount
//             return true
//         } else {
//             return false
//         }
//     }
// }

// var satu = BankAccount()
// satu.deposit(amount: 100)
// let success = satu.withdraw(amount: 50)

// print(satu.founds)



// struct Players {
//     static let name = "ronaldo"
//     static let number = 7
// }

// print(Players.name)



// class

// class Employee {
//     let hours: Int

//     init(hours:Int) {
//         self.hours = hours
//     }

//     func printSummary() {
//         print("I work \(hours) hours a day")
//     }


// }

// class Developer: Employee {
//     func work() {
//         print("i'm coding for \(hours) hours a day")
//     }

//     override func printSummary() {
//         print("I'm a developer and I work \(hours) hours a day")
//     }
// }

// let messi = Developer(hours: 8)
// messi.work()
// messi.printSummary()



// protocol
// protocol Vehicle {
//     func estimateTime(for distance : Int) -> Int
//     func travel(distance: Int)
// }

// struct Car : Vehicle {
//     func estimateTime(for distance: Int) -> Int {
//         distance / 50
//     }

//     func travel(distance: Int) {
//         print("I'm driving \(distance)km")
//     }
// }

// func commute(distance : Int, using vehicle: Vehicle) {
//     if vehicle.estimateTime(for: distance) > 100 {
//         print("That's too slow! I'll try a different vehicle.")
//     } else {
//         vehicle.travel(distance: distance)
//     }
// }

// let car = Car()
// commute(distance: 100, using: car)



// extension
// import Foundation

// extension String {
//     func trimmed() -> String {
//         self.trimmingCharacters(in : .whitespacesAndNewlines)
//     }
// }

// var quote = "   The truth is rarely pure and never simple   "
// print(quote.trimmed())



// extension protocol
// extension Collection {
//     var isNotEmpty : Bool {
//         isEmpty == false
//     }
// }

// let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
// if team.isNotEmpty {
//     print(team.count)
// }


// opsional
// let player : [String: Any] = [
//     "name": "ronaldo",
//     "position": "striker",
//     "number": 7
// ]


// if let name = player["name"] {
//     print(name)
// }


// guard
// func printSquare(of number: Int?) {
//     guard let number = number else {
//         print("Missing number")
//         return
//     }

//     print("The square of \(number) is \(number * number)")
// }

// printSquare(of: 5)
// printSquare(of: nil)


// nill coalescing

// let players = ["ronaldo", "messi", "neymar"]
// let firstPlayer = players.first ?? "unknown"

// print(firstPlayer)

// let input = ""
// let result = Int(input) ?? 0

// print(result)


// optional chain ?. ==== akses metode ini(kanan) hanya jika kiri tidak nil
// let players : [String] = []
// let chosen = players.randomElement()?.uppercased()
// print(chosen ?? "unknown")


// try?

enum UserError : Error {
    case badId, networkFailed
}

func getUser(id : Int) throws -> String {
    throw UserError.networkFailed
}

if let user  = try? getUser(id : 1) {
    print("User: \(user)")
}


// try : pake do catch untuk menangani error
// try? : mengubah hasil dari fungsi yang bisa error menjadi optional, jika error maka nil
// try! : mengasumsikan bahwa fungsi tidak akan error, jika error maka program akan crash