//
//  MainView.swift
//  Greetings
//
//  Created by Weerawut Chaiyasomboon on 10/2/2567 BE.
//

import SwiftUI

//iPhone Portrait -> Compact width, regular height
//iPad both -> Regular width, regular height

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPortraitPhone: Bool{
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        if isPortraitPhone || isIPad{
            //Portrait
            NavigationStack {
                GreetingsView()
                    .toolbar(content: {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsTapView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    })
            }
        }else{
            //Landscape
            NavigationStack {
                LandscapeGreetingsView()
                    .toolbar(content: {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsTapView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    })
            }
            
        }
    }
}

#Preview {
    MainView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}


