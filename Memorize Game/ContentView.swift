//
//  ContentView.swift
//  Memorize Game
//
//  Created by Noboru Tokimi on 12/18/22.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚗", "✈️", "🚝", "🛳", "🚁", "🏎", "🏍", "🚀", "🛰", "🛸", "🛫", "⛵️", "🛶", "⛴", "🚔", "🛺", "🛵", "🚋", "🚑", "🚕", "🚙", "🚒", "🛴", "🚅"]
    @State var emojiCount = 4
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.purple)
            Spacer()
            
            HStack{
                remove
                Spacer()
                add
            }
            .padding(.horizontal)
            .font(.largeTitle)
        }
        .padding(.horizontal)
    }
    
    
    
    var remove: some View{
        Button {
            if emojiCount > 1{
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.square")
        }
    }
    
    var add: some View{
        Button {
            if emojiCount < emojis.count{
                emojiCount += 1
            }
        } label:{
            Image(systemName: "plus.app")
        }
    }
}

struct CardView: View{
    var content: String
    @State var isFaceUp: Bool = true
    var body: some View{
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if isFaceUp{
                shape
                    .fill()
                    .foregroundColor(Color.white)
                shape
                    .strokeBorder(lineWidth: 3.0)
                Text(content)
                    .font(.largeTitle)
            }
            else{
                shape
                    .fill()
            }
            
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}


























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
            
    }
}
