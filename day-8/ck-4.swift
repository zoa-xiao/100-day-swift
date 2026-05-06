// tulis sebuah fungsi yang menerima bilangan bulat dari 1 hingga 10.000
// mengembalikan akarnya
// kurang 1 / lebih 10.000 == "Di luar batas"
// Jika Anda tidak dapat menemukan akar kuadratnya, tampilkan kesalahan "no root".


enum SquareRootError: Error {
    case outOfBounds, noRoot
}

func kuadrat(_ angka : Int) throws -> String{
    for i in 1...100 {
        if i * i == angka {
            return "akar dari \(angka) adalah \(i)"
        } else if angka < 1 || angka > 10000 {
            throw SquareRootError.outOfBounds
        }
    }
    throw SquareRootError.noRoot
}

do {
    let result = try kuadrat(50)
    print(result)

} catch SquareRootError.outOfBounds {
    print("Error: Angka di luar batas.")
} catch SquareRootError.noRoot {
    print("Error: Tidak ada akar kuadrat yang tepat.")
} catch {
    print("Error tidak diketahui: \(error).")
}