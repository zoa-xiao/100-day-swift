// versi 1
// let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
// let captainFirstName = team.sorted {name1, name2 -> Bool in 
//     if name1 == "Suzanne" {
//         return true
//     } else if name2 == "Suzanne" {
//         return false
//     }
//     return name1 < name2
// }

// print(captainFirstName)


// versi 2
// let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
// let captain = team.sorted { if $0 == "Suzanne" {
//     return true
// } else if $1 == "Suzanne" {
//     return false
// } else {
//     return $0 < $1
// } }

// print(captain)


// versi 3
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let reverseTeam = team.sorted { $0 > $1}

let Big = team.map { $0.uppercased() }
print(Big)