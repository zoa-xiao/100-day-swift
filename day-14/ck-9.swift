func acak(angka input : [Int]?) -> Int {
    return input?.randomElement() ?? Int.random(in: 1...100)
}

print(acak(angka: [1, 2, 3, 4, 5]))
print(acak(angka: nil))