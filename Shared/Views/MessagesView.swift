//
//  MessagesView.swift
//  Greetings
//
//  Created by Weerawut Chaiyasomboon on 8/2/2567 BE.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        DataItemModel(text: "Hello there!", color: .myGreen),
        DataItemModel(text: "Welcome to SwiftUi!", color: Color("myGray")),
        DataItemModel(text: "Guten Abend", color: Color("myPurple")),
        DataItemModel(text: "สวัสดี", color: Color("myRed")),
        DataItemModel(text: "Start exploring!", color: Color("myYellow")),
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages){ message in
                TextView(text: message.text, color: message.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}
