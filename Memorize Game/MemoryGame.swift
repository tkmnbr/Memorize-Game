//
//  MemoryGame.swift
//  Memorize Game
//
//  Created by Noboru Tokimi on 12/19/22.
//

//Model of the game
import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    init(numberOfPairsOfCards: Int, CreateCardContent: (Int) -> CardContent) {
        cards = Array<Card>() // Initialization
        
        //Add numberOfPairsOfCards * 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = CreateCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    struct Card {
        var isFaceUp : Bool = false
        var isMatched : Bool = false
        var content : CardContent
    }
}
