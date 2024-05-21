//
//  ContentView.swift
//  YouAreAwesome2
//
//  Created by Lori Rothermel on 5/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    
    
    var body: some View {
        
        VStack {
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
                        
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            
         
            Button("Show Message") {
                
                let messages = ["You Are Awesome!",
                                "You Are Great!",
                                "You Are Fantastic!",
                                "Fabulous? That's You!"]
//    while loop
//
//                var messageNumber = Int.random(in: 0...messages.count - 1)
//                var imageNumber = Int.random(in: 0...9)
//
//                while messageNumber == lastMessageNumber {
//                    messageNumber = Int.random(in: 0...messages.count - 1)
//                }
//                messageString = messages[messageNumber]
//                lastMessageNumber = messageNumber
//
//                while imageNumber == lastImageNumber {
//                    imageNumber = Int.random(in: 0...9)
//                }
//                imageName = "image\(imageNumber)"
//                lastImageNumber = imageNumber
                                                  
                
//   repeat loop
                
                var messageNumber: Int
                
                repeat {
                    messageNumber = Int.random(in: 0...messages.count-1)
                } while messageNumber == lastMessageNumber
                
                messageString = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                
                var imageNumber: Int
                                
                repeat {
                    imageNumber = Int.random(in: 0...9)
                } while imageNumber == lastImageNumber
                
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
                
                
                
            }  // Button
            .buttonStyle(.borderedProminent)
            
        }  // VStack
        
        
    }
}

#Preview {
    ContentView()
}

