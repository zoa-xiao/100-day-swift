import Foundation
var quote = "   The truth is rarely pure and never simple  "

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

let trimed = quote.trimmingCharacters(in : .whitespacesAndNewlines)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in : .whitespacesAndNewlines)
    }

    mutating func trim() {
        self = self.trimmed()
    }

    var lines : [String] {
        self.components(separatedBy: .newlines)
    }
}

let trimed2 = quote.trimmed()
print(trimed2)

quote.trim()
print(quote)

print(lyrics.lines.count)


// inisialisasi kostum dan memberwise


// memberwise
struct Player {
    let name : String
    let number : Int 

}

// costume
extention Player {
    init (name: String) {
        self.name = name
        self.number = Int.random(in : 1...99)
    }
}