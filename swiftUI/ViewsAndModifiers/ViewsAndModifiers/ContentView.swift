//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Adi Yamika on 03/06/26.
//

import SwiftUI

//struct capsuleText : View {
//    var text : String
//    var body : some View {
//        Text(text)
//            .font(.largeTitle)
//            .padding()
//            .foregroundStyle(.white)
//            .background(.blue)
//            .clipShape(.capsule)
//    }
//}

struct WaterMarket : ViewModifier {
    var text : String
    
    func body(content: Content) -> some View {
        ZStack{
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(WaterMarket(text: text))
    }
}

struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 20) {
            Text("neymar")
                .watermarked(with: "messi")
        }
    }
}

#Preview {
    ContentView()
}
