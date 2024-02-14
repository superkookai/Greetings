//
//  VerticalTitleView.swift
//  Greetings
//
//  Created by Weerawut Chaiyasomboon on 10/2/2567 BE.
//

import SwiftUI

struct VerticalTitleView: View {
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming!"

    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(subtitle: $subtitle)
           
            RotatableCircleView()
            
            Spacer()
        }
        .padding(.vertical)
    }
}

#Preview {
    VerticalTitleView()
}
