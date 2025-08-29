//
//  ContentView.swift
//  FirstApp
//
//  Created by Ignacio Canto on 8/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var centerImage = ""
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: centerImage)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            Button("Press Me!") {
                let message1 = "You are Awsome!"
                let message2 = "You are Great!"
                let imageString1 = "hand.thumbsup"
                let imageString2 = "sun.max.fill"
                
                message = (message == message1 ? message2 : message1)
                centerImage = (centerImage == imageString1 ? imageString2 : imageString1)
            }
                .buttonStyle(.borderedProminent)
                .font(.title2)
                .tint(.orange)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
