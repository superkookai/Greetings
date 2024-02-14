//
//  DataItemModel.swift
//  Greetings
//
//  Created by Weerawut Chaiyasomboon on 8/2/2567 BE.
//

import SwiftUI

struct DataItemModel: Identifiable{
    let id = UUID()
    let text: LocalizedStringKey
    let color: Color
    
    //struct has Memberwise initiation for free
}
