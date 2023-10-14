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
            .frame(width: 100, height: 100)
            .opacity(opacity)
            .shadow(color: .gray, radius: 8)
    }
}

#Preview {
    CircleLightView(color: .blue, opacity: 0.3)
}
