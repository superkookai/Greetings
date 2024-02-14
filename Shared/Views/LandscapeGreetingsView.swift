//
//  LandscapeGreetingsView.swift
//  Greetings
//
//  Created by Weerawut Chaiyasomboon on 10/2/2567 BE.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack {
                
                VerticalTitleView()
                
                Spacer()
                
                MessagesView()
            }
            .padding()
        }
    }
}

#Preview {
    LandscapeGreetingsView()
}
