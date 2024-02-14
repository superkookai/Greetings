//
//  BackgroundView.swift
//  Greetings
//
//  Created by Weerawut Chaiyasomboon on 8/2/2567 BE.
//

import SwiftUI

/// This is a Background view with Linear Gradient
struct BackgroundView: View {
    var body: some View {
        LinearGradient(
            colors: [
                .myBlue1,
                .myBlue2
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .opacity(0.7)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
