//
//  EmojiMemoryGame.swift
//  Memorize Game
//
//  Created by Noboru Tokimi on 12/19/22.
//

//ViewModel of the game
import SwiftUI

class EmojiMemoryGame {
    static let emojis = ["🚗", "✈️", "🚝", "🛳", "🚁", "🏎", "🏍", "🚀", "🛰", "🛸", "🛫", "⛵️", "🛶", "⛴", "🚔", "🛺", "🛵", "🚋", "🚑", "🚕", "🚙", "🚒", "🛴", "🚅"] // Global but only inside of EmojiMemoryGame
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4)  { pairIndex in
            emojis[pairIndex] }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: -Intent(s)
    func choose(_ card: MemoryGame<String>.Card){
        model.choose(card)
    }
}
