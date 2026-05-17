protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name).")
    }
}

struct Student: Person {
    let name: String
}

let student = Student(name: "Alice")
student.sayHello()