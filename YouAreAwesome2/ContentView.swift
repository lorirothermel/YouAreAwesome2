//
//  ContentView.swift
//  YouAreAwesome2
//
//  Created by Lori Rothermel on 5/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the Genius Bar needs help, they call you!"
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                
    //            Text("You Have Skills!")
    //                .font(.largeTitle)
    //                .fontWeight(.black)
    //                .foregroundColor(Color("Gold-BC"))
    //                .padding()
    //                .background(Color("Maroon-BC"))
    //                .padding(1)
    //                .cornerRadius(15)
                
                Spacer()
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
    //                .border(.orange, width: 5)
                    .padding()
                
                Spacer()
                
                Divider()
                    .background(.black)
                    .padding()
                    .frame(width: 200.0)
                
                Rectangle()
                    .fill(.indigo)
                    .frame(width: geometry.size.width * (0.75), height: 5)
                
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
    //            .border(.purple, width: 5)
                .padding()
                
            }  // VStack
            
        }  // GeometryReader
        
    }
}

#Preview {
    ContentView()
}
