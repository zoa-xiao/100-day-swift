// compted property
struct Employ {
    let name : String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining : Int {
        get { // saat dibaca
            vacationAllocated - vacationTaken
        }

        set { // saat diubah
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var employ1 = Employ(name: "Ronaldo")
print(employ1.vacationAllocated)
employ1.vacationRemaining = 5
print(employ1.vacationAllocated)