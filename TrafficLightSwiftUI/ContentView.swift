//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Guselnikov Gordey on 10/12/23.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var redLightOpacity = 0.2
    @State private var yellowLightOpacity = 0.2
    @State private var greenLightOpacity = 0.2
    
    @State private var currentLight = CurrentLight.red

    @State private var buttonTitle = "START"
    
    var body: some View {
        VStack {
            CircleLightView(color: .red, opacity: redLightOpacity)
            CircleLightView(color: .yellow, opacity: yellowLightOpacity)
            CircleLightView(color: .green, opacity: greenLightOpacity)
            
            Spacer()
            
            ButtonView(title: buttonTitle) {
                buttonTitle = "NEXT"
                switchLight()
            }
        }
        .padding()
    }
    
    private func switchLight() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            greenLightOpacity = lightIsOff
            redLightOpacity = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLightOpacity = lightIsOff
            yellowLightOpacity = lightIsOn
            currentLight = .green
        case .green:
            yellowLightOpacity = lightIsOff
            greenLightOpacity = lightIsOn
            currentLight = .red
        }
    }
}

#Preview {
    ContentView()
}
