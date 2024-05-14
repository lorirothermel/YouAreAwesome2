//
//  ContentView.swift
//  YouAreAwesome2
//
//  Created by Lori Rothermel on 5/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "Namaste"
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(systemName: "speaker.wave.2", variableValue: 0.56)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.multicolor)
                .padding()
                .background(Color(hue: 0.485, saturation: 0.408, brightness: 0.92))
//                .clipShape(Circle())
                .cornerRadius(30.0)
                .shadow(color: .gray, radius: 30, x: 20, y: 20)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(.teal, lineWidth: 1)
                )
                .padding()
 
                         
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
