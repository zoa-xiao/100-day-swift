//property observer 
struct App {
    var contacts = [String]() {
        willSet { // kode yang dijalankan sebelum nilai diubah
            print("current value is \(contacts)")
            print("new value is \(newValue)")
        }
        didSet { // kode yang dijalankan setelah nilai diubah
            print("there are now \(contacts.count) contacts")
            print("old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Messi")
app.contacts.append("Ronaldo")