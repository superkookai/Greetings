//
//  TextView.swift
//  Greetings
//
//  Created by Weerawut Chaiyasomboon on 8/2/2567 BE.
//

import SwiftUI

struct TextView: View {
    let text: LocalizedStringKey
    @State var color: Color
    
    let colors: [Color] = [
        .red,
        .green,
        .blue,
        .yellow,
        .orange,
        .purple,
        .indigo
    ]
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
        
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var font: Font {
        #if os(macOS)
            .title
        #elseif os(iOS)
            isIPad ? .largeTitle : .body
        #endif
    }
    
    var body: some View {
        Text(text)
            .font(font)
            .fontWeight(.bold)
            .foregroundStyle(Color.white)
            .padding()
            .background(color)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: color, radius: 10, x: 2.0, y: 2.0)
            .onTapGesture {
                withAnimation {
                    self.color = colors.randomElement() ?? .red
                }
            }
    }
}

#Preview {
    VStack {
        TextView(text: "Greetings", color: .green)
        TextView(text: "Hello there!", color: .orange)
        TextView(text: "Humms", color: .blue)
    }
}
