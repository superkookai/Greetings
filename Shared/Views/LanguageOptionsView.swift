//
//  LanguageOptionsView.swift
//  Greetings
//
//  Created by Weerawut Chaiyasomboon on 11/2/2567 BE.
//

import SwiftUI

struct LanguageOptionsView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu(ContextMenu(menuItems: {
                Button("English") {
                    language = "en"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                
                Button("Spanish") {
                    language = "es"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                
                Button("Hebrew") {
                    language = "he"
                    layoutDirectionString = RIGHT_TO_LEFT
                }
            }))
    }
}

#Preview {
    LanguageOptionsView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
