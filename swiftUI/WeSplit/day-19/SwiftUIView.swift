//
//  SwiftUIView.swift
//  WeSplit
//
//  Created by Adi Yamika on 30/05/26.
//

import SwiftUI

struct SwiftUIView: View {
    let satuan : [String] = ["Meter", "Kilometer", "Kaki", "Yard", "Mil"]
    @State private var pilihSatuanInput: String = "Meter"
    @State private var pilihSatuanOutput: String = "Yard"
    @State private var input : Int?
    @FocusState private var isActive : Bool
    
    var satuanMeter : [String : Double] = [
        "Meter" : 1,
        "Kilometer": 1000,
        "Kaki": 0.3048,
        "Yard": 0.9144,
        "Mil": 1609.344
    ]
    
    var result : Double {
        let faktorInput = satuanMeter[pilihSatuanInput] ?? 1
        var faktorOutput = satuanMeter[pilihSatuanOutput] ?? 1
        
        let meter = Double(input ?? 0) * faktorInput
        
        return meter / faktorOutput
        
        
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("input nilai", value: $input, format: .number ).focused($isActive)
                }
                Section("Pilih Satuan Input") {
                    Picker("Pilih satuan", selection: $pilihSatuanInput) {
                        ForEach(satuan, id: \.self) {
                            Text("\($0)")
                        }
                    }.pickerStyle(.palette)
                }
                Section("Pilih Satuan Output") {
                    Picker("Pilih satuan", selection: $pilihSatuanOutput) {
                        ForEach(satuan, id: \.self) {
                            Text("\($0)")
                        }
                    }.pickerStyle(.palette)
                }
                
                Section("Satuan setelah di konversi") {
                    Text("\(result) \(pilihSatuanOutput)").bold()
                }
            }.navigationTitle("Conversion")
                .toolbar {
                    if isActive {
                        Button("Done") {
                            isActive = false
                        }
                    }
                }
        }
    }
}

#Preview {
    SwiftUIView()
}
