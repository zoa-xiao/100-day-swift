labeled : for i in 1...5 {
    print(i)
    
    for j in 1...5 {
        if j == 3 {
            continue
        }
        print("Inner loop: \(j)")
        
        if j == 2 {
            break labeled
        }
    }
}