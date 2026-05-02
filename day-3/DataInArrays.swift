// How to store ordered data in arrays

var arr = [1, 2, 3, 4, 5]
print(arr[0])

arr.append(6)
print(arr[0] + arr[5])


var isString = ["h", "e", "l", "l", "o"]
// print(isString[0] + arr[0])

var album = Array<String>()
album.append("Red")
album.append("Reputation")

album.remove(at: 0)
// versi 2
var albums = [String]()

print("jumlah album adalah \(album.count)")


// sorted(), reversed(), shuffle(), contains(), firstIndex(of:), removeAll(), removeLast(), removeFirst(), insert(_:at:), sort(), sorted(by:), shuffle(), reversed(), count, isEmpty, first, last, min(), max()