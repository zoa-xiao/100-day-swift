protocol Bangunan {
    var kamar : Int { get set}
    var biaya : Int { get set}
    var agent : String { get set}
    func deskripsi()
}

struct House : Bangunan {
    var kamar : Int
    var biaya : Int
    var agent : String
    func deskripsi() {
        print("House with \(kamar) kamar")
    }
}

struct Office : Bangunan {
    var kamar : Int
    var biaya : Int
    var agent : String
    func deskripsi() {
        print("Office with \(kamar) kamar")
    }
}

var house1 = House(kamar: 3, biaya: 500000000, agent: "John Doe")
var office1 = Office(kamar: 10, biaya: 2000000000, agent: "Jane Doe")

house1.deskripsi()
office1.deskripsi()