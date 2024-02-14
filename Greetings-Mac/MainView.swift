

import SwiftUI

//iPhone Portrait -> Compact width, regular height
//iPad both -> Regular width, regular height

struct MainView: View {
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        NavigationStack {
            GreetingsView()
                .toolbar(content: {
                    ToolbarItem(placement: .navigation) {
                        LanguageOptionsTapView(language: $language, layoutDirectionString: $layoutDirectionString)
                    }
                })
        }
    }
}

#Preview {
    MainView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}


