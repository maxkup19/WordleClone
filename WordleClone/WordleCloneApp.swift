//
//  WordleCloneApp.swift
//  WordleClone
//
//  Created by Max Kup on 08.08.2022.
//

import SwiftUI

@main
struct WordleCloneApp: App {
    @StateObject var dm = WordleDataModel()
    
    var body: some Scene {
        WindowGroup {
            GameView()
                .environmentObject(dm)
        }
    }
}
