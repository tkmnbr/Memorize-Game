//
//  Memorize_GameApp.swift
//  Memorize Game
//
//  Created by Noboru Tokimi on 12/18/22.
//

import SwiftUI

@main
struct Memorize_GameApp: App {
    let game = EmojiMemoryGame() // "Free init"
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
