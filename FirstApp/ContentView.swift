//
//  ContentView.swift
//  FirstApp
//
//  Created by Ignacio Canto on 8/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I am a programer!"
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            HStack{
                Button("Awsome!") {
                    message = "Awsome!"
                    }
                Button("Great!") {
                    message = "Great!"
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
