//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Guselnikov Gordey on 10/15/23.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> ()
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
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
