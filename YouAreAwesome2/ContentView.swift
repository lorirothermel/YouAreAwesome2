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
            
            HStack {
                
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }  // Button
                .buttonStyle(.borderedProminent)
                
                Spacer()
                
                Button("Great") {
                    messageString = "You Are Great!"
                }  // Button
                .buttonStyle(.borderedProminent)
                
            }  // HStack
            .padding()
            
        }  // VStack
        
        
        
    }
}

#Preview {
    ContentView()
}
