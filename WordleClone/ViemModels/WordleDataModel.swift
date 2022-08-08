//
//  WordleDataModel.swift
//  WordleClone
//
//  Created by Max Kup on 08.08.2022.
//

import SwiftUI

class WordleDataModel: ObservableObject {
    @Published var guesses = [Guess]()
    
    var keyColors = [String : Color]()
    
    init() {
        newGame()
    }
    
    // MARK: - Setup
    func newGame() {
        populateDefaults()
    }
    
    func populateDefaults() {
        guesses = []
        for index in 0...5 {
            guesses.append(Guess(index: index))
        }
        
        let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        for char in letters {
            keyColors[String(char)] = .unused
        }
    }
    
    // MARK: - Game Play
    func addToCurrentWord(_ letter: String) {
        
    }
    
    func enterWord() {
        
    }
    
    func removeLetterFromCurrentWord() {
        
    }
    
}
