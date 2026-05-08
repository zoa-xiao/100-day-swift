let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let result = luckyNumbers.filter { $0 % 2 == 0 }.sorted { $0 < $1 }.map { "\($0) is a lucky number" }

for item in result {
    print(item)
}