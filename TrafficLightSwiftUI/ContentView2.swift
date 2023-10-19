//
//  ContentView2.swift
//  TrafficLightSwiftUI
//
//  Created by Guselnikov Gordey on 10/19/23.
//

import SwiftUI

enum Light {
    case off, red, yellow, green
}

struct ContentView2: View {
    @State private var currentLight = Light.off
    @State private var buttonTitle = "START"
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                CircleLightView(
                    color: .red,
                    opacity: currentLight == .red ? 1 : 0.3
                )
                CircleLightView(
                    color: .yellow,
                    opacity: currentLight == .yellow ? 1 : 0.3
                )
                CircleLightView(
                    color: .green,
                    opacity: currentLight == .green ? 1 : 0.3
                )
                
                Spacer()
                
                ButtonView(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    switchLight()
                }
            }
        }
    }
    
    private func switchLight() {
        switch currentLight {
        case .off: currentLight = .red
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
}

#Preview {
    ContentView2()
}
