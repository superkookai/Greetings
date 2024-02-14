//
//  Greetings_MacApp.swift
//  Greetings-Mac
//
//  Created by Weerawut Chaiyasomboon on 11/2/2567 BE.
//

import SwiftUI
import TipKit

@main
struct GreetingsApp: App {
    
    @AppStorage("language") var language: String = "en"
    @AppStorage("layoutDirectionString") var layoutDirectionString: String = LEFT_TO_RIGHT
    
    var layoutDirection: LayoutDirection{
        layoutDirectionString == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    
    var resetTip = true
    
    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirectionString: $layoutDirectionString)
                .environment(\.locale, Locale(identifier: language)) //change language
                .environment(\.layoutDirection, layoutDirection) //change layout direction
                .task {
                    if resetTip{
                        try? Tips.resetDatastore() //reset Tips Datastore for display Tips again for testing purpose
                    }
                    // Configure and load your tips at app launch.
                    try? Tips.configure([
                        .displayFrequency(.immediate),
                        .datastoreLocation(.applicationDefault)
                    ])
                }
        }
    }
}
