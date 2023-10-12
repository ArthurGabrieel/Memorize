//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Arthur Gabriel Gomes on 12/10/23.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    private static let emojis = ["👻", "🎃", "🕷️", "😈","☠️", "💀", "🧙🏼‍♀️", "🕸️", "😱", "🍭", "👹"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(
            numberOfPairCards: 4) { pairIndex in
                if emojis.indices.contains(pairIndex) {
                    return emojis[pairIndex]
                } else {
                    return "❌"
                }
            }
    }
        
    @Published private var model = createMemoryGame()
    
    var cards: [MemoryGame<String>.Card] {
        return model.cards
    }
    
    // MARK: - Intents
    
    func shuffle() {
        model.shuffle()    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
