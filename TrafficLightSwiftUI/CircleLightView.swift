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
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .opacity(opacity)
            .shadow(color: .gray, radius: 8)
    }
}

#Preview {
    CircleLightView(color: .blue, opacity: 0.3)
}
