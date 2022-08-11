//
//  Guess.swift
//  WordleClone
//
//  Created by Max Kup on 08.08.2022.
//

import SwiftUI

struct Guess {
    let index: Int
    var word = "     "
    var bgColors = [Color](repeating: .wrong, count: 5)
    var cardFlipped = [Bool](repeating: false, count: 5)
    var guessLetters: [String] {
        word.map { String($0) }
    }
    
    // 🟩⬛️🟩🟨🟩
    var results: String {
        let tryColors: [Color : String] = [.wrong : "⬛️", .misplaced : "🟨", .correct : "🟩"]
        return bgColors.compactMap { tryColors[$0] }.joined(separator: "")
    }
}
