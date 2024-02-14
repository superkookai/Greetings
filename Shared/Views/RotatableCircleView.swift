//
//  RotatableCircleView.swift
//  Greetings
//
//  Created by Weerawut Chaiyasomboon on 10/2/2567 BE.
//

import SwiftUI

struct RotatableCircleView: View {
    let lineWidth = 15.0
    let diameter = 70.0
    let gradient = AngularGradient.init(
        gradient: Gradient(
            colors: [
                .blue,
                .green,
                .red
            ]
        ),
        center: .center,
        angle: .zero
    )
    
    var angle: Angle {
        isRotate ? .zero : Angle(degrees: 360)
    }
    
    @State private var isRotate: Bool = false
    
    var body: some View {
        Circle()
            .strokeBorder(gradient, lineWidth: lineWidth)
            .rotationEffect(angle)
            .frame(width: diameter, height: diameter)
            .onTapGesture {
                withAnimation {
                    self.isRotate.toggle()
                }
            }
    }
}

#Preview {
    RotatableCircleView()
}
