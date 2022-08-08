//
//  Color+Extension.swift
//  WordleClone
//
//  Created by Max Kup on 08.08.2022.
//

import SwiftUI

extension Color {
    static var wrong: Color {
        Color("wrong")
    }
    static var correct: Color {
        Color("correct")
    }
    static var unused: Color {
        Color("unused")
    }
    static var misplaced: Color {
        Color("misplaced")
    }
    static var systemBackground: Color {
        Color(.systemBackground)
    }
}
