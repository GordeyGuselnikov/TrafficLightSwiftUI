//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Guselnikov Gordey on 10/15/23.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
        }
        .padding()
        .foregroundColor(.white)
        .background(.blue)
        .cornerRadius(20)
    }
}

#Preview {
    ButtonView(title: "START", action: {})
}
