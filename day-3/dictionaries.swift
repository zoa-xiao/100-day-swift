// How to store and find data in dictionaries

var identity = ["name" : "cristiano ronaldo", "age" : "8", "height" : "187", "country" : "portugal"]
// print(identity["country"] ?? "unknown")
print(identity["name", default: "unknown"])


// testing
var name = ["name": "messi"]
var dup = name["d", default : "unknown"]

print(dup)