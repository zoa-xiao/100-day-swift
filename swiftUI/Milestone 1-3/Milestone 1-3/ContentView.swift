//
//  ContentView.swift
//  Milestone 1-3
//
//  Created by Adi Yamika on 07/06/26.
//

import SwiftUI

struct ContentView: View {
    let userAnswer : [String] = ["✂️", "🪨", "📃"]
    let computerAnswer: [String] = ["🪨", "📃", "✂️"]
    
    
    @State private var computerSelect : Int = Int.random(in: 0...2)
    @State private var winOrLose : Bool = Bool.random()
    
    @State private var score : Int = 0
    @State private var trying : Int = 0
    @State private var isFinal : Bool = false

    
    var winLose : String {
        winOrLose ? "Anda harus menang" : "Anda harus kalah"
    }

    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                Text("Your Score is")
                Text("\(trying)/8")
                Text("\(score)").font(Font.largeTitle.bold())
                
                Spacer()
                
                Text("Pilihan Komputer")
                
                Text("\(computerAnswer[computerSelect])").font(.system(size: 100))
                
                
                Text("\(winLose)").bold()
                
                Spacer()
                
                ForEach(userAnswer, id: \.self) { answer in
                    Button {
                        calculate(pilUser: answer)
                    } label : {
                        Text(answer).font(.system(size: 80))
                    }
                }
                
                Spacer()
                
            }
                .navigationTitle("Gunting Batu Kertas")
                .navigationBarTitleDisplayMode(.inline)
        }.alert("Finish", isPresented: $isFinal) {
            Button() {
                resetScore()
            } label : {
                Text("Continue")
            }
        } message : {
            Text("Your score is \(score)")
        }
    }
    
    func calculate(pilUser : String){
        if winOrLose == true { // harus benar
            if pilUser == "✂️" && computerSelect == 0 {
                score -= 1
                computerSelect = Int.random(in: 0...2)
                winOrLose.toggle()
            } else if pilUser == "✂️" && computerSelect == 1 {
                score += 1
                computerSelect = Int.random(in: 0...2)
                winOrLose.toggle()
            } else if pilUser == "🪨" && computerSelect == 1 {
                score -= 1
                computerSelect = Int.random(in: 0...2)
                winOrLose.toggle()
            } else if pilUser == "🪨" && computerSelect == 2 {
                score += 1
                computerSelect = Int.random(in: 0...2)
                winOrLose.toggle()
            }else if pilUser == "📃" && computerSelect == 0 {
                score += 1
                computerSelect = Int.random(in: 0...2)
                winOrLose.toggle()
            }else if pilUser == "📃" && computerSelect == 2 {
                score -= 1
                computerSelect = Int.random(in: 0...2)
                winOrLose.toggle()
            } else {
                winOrLose.toggle()
                computerSelect = Int.random(in: 0...2)
                score -= 1
            }
        } else { // harus salah
            if pilUser == "✂️" && computerSelect == 0 {
                score += 1
                computerSelect = Int.random(in: 0...2)
                winOrLose.toggle()
            } else if pilUser == "✂️" && computerSelect == 1 {
                score -= 1
                computerSelect = Int.random(in: 0...2)
                winOrLose.toggle()
            } else if pilUser == "🪨" && computerSelect == 1 {
                score += 1
                computerSelect = Int.random(in: 0...2)
                winOrLose.toggle()
            } else if pilUser == "🪨" && computerSelect == 2 {
                score -= 1
                computerSelect = Int.random(in: 0...2)
                winOrLose.toggle()
            }else if pilUser == "📃" && computerSelect == 0 {
                score -= 1
                computerSelect = Int.random(in: 0...2)
                winOrLose.toggle()
            }else if pilUser == "📃" && computerSelect == 2 {
                score += 1
                computerSelect = Int.random(in: 0...2)
                winOrLose.toggle()
            } else {
                winOrLose.toggle()
                computerSelect = Int.random(in: 0...2)
                score -= 1
            }
        }
        trying += 1
        if trying == 8 {
            isFinal = true
        }
        
        
    }
    func resetScore(){
        score = 0
        isFinal = false
        trying = 0
        print("final")
    }
    
   
  
    
}

#Preview {
    ContentView()
}
