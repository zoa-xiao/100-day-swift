var players : [String]? = ["cristiano", "messi"]

if let firstPlayer = players?.first {
    print("The first player is \(firstPlayer).")
} else {
    print("There is no first player.")
}