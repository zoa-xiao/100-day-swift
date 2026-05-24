enum UserError : Error {
    case badId, networkFailed
}

func getUser(id : Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 1) {
    print("User: \(user)")
}



let Users = (try? getUser(id: 1)) ?? "Default User"
print(Users)



// ringkasan
// try : pake do catch untuk menangani error
// try? : mengubah hasil dari fungsi yang bisa error menjadi optional, jika error maka nil
// try! : mengasumsikan bahwa fungsi tidak akan error, jika error maka program akan crash