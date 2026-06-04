//
//  ContentView.swift
//  WeSplit
//
//  Created by Adi Yamika on 28/05/26.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    @FocusState private var amountIsFocused : Bool
    
    let tipPercentages = [10,15,20,25,0]
    var totals: (amountPerPerson : Double, grandTotal : Double) {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerson = grandTotal / peopleCount
        
        return (amountPerson,  grandTotal)
        
    }
   
    var body : some View {
        NavigationStack{
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code : Locale.current.currency?.identifier ?? "USD")).keyboardType(.decimalPad).focused($amountIsFocused)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<5) {
                            Text("\($0) people")
                        }
                    }.pickerStyle(.navigationLink)
                }
                
                
                
                Section("How much do you want to leave?") {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self){ number in
                            Text("\(number)")
                        }
                    }.pickerStyle(.navigationLink)
                }
                
                Section("Amount per person") {
                    Text(totals.amountPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
                Section("Grand Total") {
                    Text(totals.grandTotal, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .foregroundStyle(tipPercentage == 0 ? .red : .black)
                }
                
               
            }.navigationTitle("wesplit")
            
                .toolbar {
                    if amountIsFocused {
                        Button("Done") {
                            amountIsFocused = false
                        }
                    }
                }
        }
    }
    
}

#Preview {
    ContentView()
}
