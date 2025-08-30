//
//  ContentView.swift
//  FirstApp
//
//  Created by Ignacio Canto on 8/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    var body: some View {
        VStack {
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            
            Spacer()
            
            Button("Show message") {
                let message1 = "You are Awsome!"
                
                message = message1
                
                imageNumber += 1
                
                if (imageNumber > 9) {
                    imageNumber = 0
                }
                
                imageName = "image\(imageNumber)"
                
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
