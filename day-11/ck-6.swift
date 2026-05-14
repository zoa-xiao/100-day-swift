struct Car {
    let model : String
    let seat : Int
    var gear : Int

    mutating func changeGear(newGear : Int) {
        if newGear < 1 || newGear > 10 {
            print("Invalid gear")
            return
        }
        self.gear = newGear
    }
}

var car1 = Car(model: "Lamborghini", seat: 2, gear: 1)
car1.changeGear(newGear: 11)
print(car1.gear)
