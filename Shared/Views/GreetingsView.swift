//
//  ContentView.swift
//  Greetings
//
//  Created by Weerawut Chaiyasomboon on 8/2/2567 BE.
//

import SwiftUI

struct GreetingsView: View {
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack(alignment: .leading) {
                
                TitleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    GreetingsView()
}
