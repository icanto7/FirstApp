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
            Image(centerImage)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            
            Spacer()
            
            Button("Press Me!") {
                let message1 = "You are Awsome!"
                let imageString1 = "image0"
                let imageString2 = "image1"
                
                message = message1
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
