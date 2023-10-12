//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Arthur Gabriel Gomes on 08/10/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
