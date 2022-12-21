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
    
    mutating func choose(_ card: Card) {
        let chosenIndex = index(of: card)
        cards[chosenIndex].isFaceUp.toggle()
        print("\(cards)")
    }
    
    func index(of card: Card) -> Int {
        for index in 0..<cards.count {
            if cards[index].id == card.id {
                return index
            }
        }
        return 0
    }
    
    init(numberOfPairsOfCards: Int, CreateCardContent: (Int) -> CardContent) {
        cards = Array<Card>() // Initialization
        
        //Add numberOfPairsOfCards * 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = CreateCardContent(pairIndex)
            cards.append(Card(id: pairIndex*2, content: content))
            cards.append(Card(id: pairIndex*2+1, content: content))
        }
    }
    
    struct Card: Identifiable {
        var id: Int // Hashing
        var isFaceUp : Bool = true
        var isMatched : Bool = false
        var content : CardContent
    }
}
