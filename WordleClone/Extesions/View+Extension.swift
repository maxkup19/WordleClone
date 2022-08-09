//
//  View+Extension.swift
//  WordleClone
//
//  Created by Max Kup on 09.08.2022.
//

import Foundation
import SwiftUI

extension View {
    func shake(animatableData: CGFloat) -> some View {
        self.modifier(Shake(animatableData: animatableData))
    }
}
