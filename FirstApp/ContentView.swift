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
                if (message == "You are Awsome!") {
                    message = "You are Great!"
                    centerImage = "hand.thumbsup"
                } else {
                    message = "You are Awsome!"
                    centerImage = "sun.max.fill"
                }
                
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
