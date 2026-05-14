struct BankAccount {
    private var founds = 0

    mutating func deposit(amount : Int){
        founds += amount
    }

    mutating func withdraw(amount : Int) -> Bool {
        if founds >= amount {
            founds -= amount 
                return true
            } else {
                return false
            
        }
    }

    
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 50)

if success {
    print("Withdraw successful")
} else {
    print("Insufficient funds")
}