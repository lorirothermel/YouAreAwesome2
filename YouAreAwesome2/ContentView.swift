//
//  ContentView.swift
//  YouAreAwesome2
//
//  Created by Lori Rothermel on 5/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
        
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
            
            
            Spacer()
            
            
            
            Button("Show Message") {
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great!"
                
                if messageString == message1 {
                    messageString = message2
                } else {
                    messageString = message1
                }
                
            }  // Button
            .buttonStyle(.borderedProminent)
            
        }  // VStack
        
        
    }
}

#Preview {
    ContentView()
}
