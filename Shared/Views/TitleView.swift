//
//  TitleView.swift
//  Greetings
//
//  Created by Weerawut Chaiyasomboon on 8/2/2567 BE.
//

import SwiftUI
import TipKit

/// This is the Title View.
/// Which have Title and Subtitle (when tap subtitle will change randomly.
/// And also have Raindow Cicle when tap will rotate with animated.
struct TitleView: View {

    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming!"
    
    private var greetingsTip = GreetingsTip()

    var body: some View {
        HStack {
            GreetingsTextView(subtitle: $subtitle)
                .popoverTip(greetingsTip)
            
            Spacer()
            
            RotatableCircleView()
        }
    }
}

#Preview {
    TitleView()
}
