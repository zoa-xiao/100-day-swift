class Employee {
    let hours: Int

    init(hours:Int) {
        self.hours = hours
    }
}

class Developer: Employee {
    func Work() {
        print("I'm a developer and I work \(hours) hours a day.")
    }
}

let developer = Developer(hours: 8)
developer.Work()