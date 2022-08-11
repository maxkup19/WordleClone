//
//  ColorSchemeManager.swift
//  WordleClone
//
//  Created by Max Kup on 11.08.2022.
//

import SwiftUI

enum ColorScheme: Int {
    case unspecified, light, dark
}

class ColorSchemeManager: ObservableObject {
    @AppStorage("colorScheme") var colorScheme: ColorScheme = .unspecified {
        didSet {
            applyColorScheme()
        }
    }
    
    func applyColorScheme() {
        UIWindow.key?.overrideUserInterfaceStyle = UIUserInterfaceStyle(rawValue: colorScheme.rawValue)!
    }
}
