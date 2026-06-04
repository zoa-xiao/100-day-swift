//
//  SwiftUIView.swift
//  WeSplit
//
//  Created by Adi Yamika on 30/05/26.
//

import SwiftUI

struct FlagImage : ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(.circle).shadow(radius: 2)
    }
}

struct BlueText : ViewModifier {
    func body(content: Content) -> some View {
        content.foregroundStyle(.blue).bold()
    }
}

extension View {
    func flagImage() -> some View {
        modifier(FlagImage())
    }
}

struct GuestView: View {
    @State private var showingAlert = false
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score : Int = 0
    @State private var message = ""
    
    @State private var percobaan = 0
    @State private var isReset = false
   

    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in:0...2)
    
    @ViewBuilder
    var flagForImage : some View {
        ForEach(0..<3) { number in
            Button {
                flagTapped(number)
                print(percobaan)
              
              
            } label : {
                Image(countries[number])
            }
        }
    }
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
            .ignoresSafeArea()
            VStack {
                Spacer()
                Text("Guess the flag").modifier(BlueText())
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)
                Spacer()
                Text("Score: \(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                Spacer()
                VStack(spacing : 15) {
                    VStack {
                        Text("Tap the flag of")
                            .font(.subheadline.weight(.heavy))
                            .foregroundStyle(.secondary)
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    flagForImage
                    
                }  .frame(maxWidth: .infinity)
                    .padding(.vertical, 20)
                    .background(.regularMaterial)
                    .clipShape(.rect(cornerRadius:20))
                
                    .alert(scoreTitle, isPresented: $showingScore) {
                        Button("Continue", action: askQuestion)
                    } message: {
                        Text(message)
                    }
                    .alert("finish - \(scoreTitle)", isPresented: $isReset) {
                        Button("try again", action: sReset)
                    } message: {
                        
                        Text("\(message) your score is \(score)")
                    
                        
                    }
            }.padding()
        }
  
    }
    
    
    
    func flagTapped(_ number: Int) {
        percobaan += 1
        if percobaan >= 8 {
            showingScore = false
            isReset = true
            if number == correctAnswer {
                score += 1
            }
        } else  if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
            showingScore = true
        } else {
            scoreTitle = "wrong"
            message = "no this is \(countries[number]) flag"
            score -= 1
            showingScore = true
          
        }
        
    }
    
    func sReset(){
        percobaan = 0
        score = 0
        askQuestion()
    }
    
    
    
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

#Preview {
    GuestView()
}
