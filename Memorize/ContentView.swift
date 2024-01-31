//
//  ContentView.swift
//  Memorize
//
//  Created by Calvin Mwariama on 1/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp = false
    
    var body: some View {
            ZStack{
                let base = RoundedRectangle(cornerRadius: 12)
                
                if isFaceUp {
                    base.foregroundColor(.white)
                    base.strokeBorder(lineWidth: 10)
                    Text("👻").font(.largeTitle)
                } else {
                    base
                }
            }
            .onTapGesture {
                isFaceUp.toggle()
            }
    }
}

#Preview {
    ContentView()
}
