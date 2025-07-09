//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Vaibhavi Bandaru on 7/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
                
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 3)
            
            Button("Submit Name") {
                textTitle = "Welcome \(name)!"
            }
            .font(.title2)
            .buttonStyle(BorderedProminentButtonStyle())
            .tint(.purple)

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
