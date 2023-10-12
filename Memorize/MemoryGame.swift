//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Arthur Gabriel Gomes on 12/10/23.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: [Card]
    
    init(numberOfPairCards: Int, cardContentFactory: (Int) -> CardContent) {
        self.cards = [Card]()
        
        for pairIndex in 0..<max(2, numberOfPairCards) {
            let content: CardContent = cardContentFactory(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    func choose(_ card: Card) {
        
    }
    
    mutating func shuffle() {
        cards.shuffle()
    }
    
    struct Card {
        var isFaceUp = false
        var isMatched = false
        let content: CardContent
    }
}
