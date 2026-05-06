enum PasswordError: Error{
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    } 
    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}



// function throws artinya function tersebut bisa gagal dan melempar error. Swift memaksamu untuk menangani kemungkinan error itu — tidak boleh diabaikan.
//Ibarat kamu melempar bola 🏀 — harus ada yang menangkap, tidak boleh dibiarkan jatuh.

do {
    let result = try checkPassword("12345")
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Error: Password terlalu pendek.")
} catch PasswordError.obvious {
    print("Error: Password terlalu mudah ditebak.")
} catch {
    print("Error tidak diketahui: \(error).")
}



// menghilangkan verbose error
// do {
//     try throwingFunction1()
//     nonThrowingFunction1()
//     try throwingFunction2()
//     nonThrowingFunction2()
//     try throwingFunction3()
// } catch {
//     // handle errors
// }