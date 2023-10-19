//
//  CircleLightView.swift
//  TrafficLightSwiftUI
//
//  Created by Guselnikov Gordey on 10/12/23.
//

import SwiftUI

struct CircleLightView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(height: 100)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(color: .gray, radius: 10)
            
    }
}

#Preview {
    CircleLightView(color: .blue, opacity: 0.3)
}
