//
//  ToastView.swift
//  WordleClone
//
//  Created by Max Kup on 10.08.2022.
//

import SwiftUI

struct ToastView: View {
    let toastText: String
    
    var body: some View {
        Text(toastText)
            .foregroundColor(.systemBackground)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.primary)
            )
    }
}

struct ToastView_Previews: PreviewProvider {
    static var previews: some View {
        ToastView(toastText: "Not in word list")
    }
}
