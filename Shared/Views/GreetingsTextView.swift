//
//  GreetingsTextView.swift
//  Greetings
//
//  Created by Weerawut Chaiyasomboon on 10/2/2567 BE.
//

import SwiftUI

struct GreetingsTextView: View {
    @Binding var subtitle: LocalizedStringKey
    
    let subtitles: [LocalizedStringKey] = [
        "Exploring iOS Programming!",
        "Learn how to bake",
        "Programming recipes",
        "A quest for knowledge"
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            #if os(macOS)
            Text(subtitle)
                .font(.title)
            #elseif os(iOS)
            Text(subtitle)
                .font(.headline)
                .fontWeight(.thin)
            #endif
            
            #if os(macOS)
            Text("Mac App")
            #elseif os(iOS)
            Text("iOS App")
            #endif
        }
        .onTapGesture {
            self.subtitle = subtitles.randomElement() ?? LocalizedStringKey("Exploring iOS Programming!")
        }
    }
}

#Preview {
    GreetingsTextView(subtitle: .constant("Exploring iOS Programming!"))
}
