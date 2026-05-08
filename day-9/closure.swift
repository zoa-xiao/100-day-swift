let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let captainFirstName = team.sorted(by : {(name1: String, name2: String) -> Bool in 
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
})

print(captainFirstName)