//
//  WordleDataModel.swift
//  WordleClone
//
//  Created by Max Kup on 08.08.2022.
//

import SwiftUI

class WordleDataModel: ObservableObject {
    @Published var guesses = [Guess]()
    
    init() {
        newGame()
    }
    
    func newGame() {
        populateDefaults()
    }
    
    func populateDefaults() {
        guesses = []
        for index in 0...5 {
            guesses.append(Guess(index: index))
        }
    }
}
