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
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    
    
    var body: some View {
        
        VStack {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
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
                
                let messages = ["0 - Big Bird",
                                "1 - You're Magic",
                                "2 - I Sleep 18 hrs a day",
                                "3 - Anybody see Nemo",
                                "4 - Wow! I'm glad I came out",
                                "5 - Awesomeness",
                                "6 - Plenty of fish in the sea",
                                "7 - You bring me out of my shell",
                                "8 - Prepare for Beast Mode",
                                "9 - It's good to have friends"]
                
                
//               let messages = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
                                
                messageString = messages[messageNumber]
                messageNumber = messageNumber + 1
                
                if messageNumber == messages.count {
                    messageNumber = 0
                }
                
                imageName = "image\(imageNumber)"
                imageNumber = imageNumber + 1
                
                if imageNumber > 9 {
                    imageNumber = 0
                }  // if
                                            
            }  // Button
            .buttonStyle(.borderedProminent)
            
        }  // VStack
        
        
    }
}

#Preview {
    ContentView()
}
