//
//  ContentView.swift
//  Memorize Game
//
//  Created by Noboru Tokimi on 12/18/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20.0)
                .stroke(lineWidth: 3.0)
            Text("Hello, Noboru!")
                .foregroundColor(Color.black)
        }
        .padding(.horizontal)
        .foregroundColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)

    
        
    }
}




























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
