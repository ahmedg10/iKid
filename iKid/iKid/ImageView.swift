//
//  ImageView.swift
//  iKid
//
//  Created by Ahmed Ghaddah on 5/6/24.
//

import Foundation
import SwiftUI


struct ImageView : View {
    let images = ["chicken-joke", "chicken-screaming"]
    @State private var currentIndex = 0;
    var body: some View{
        NavigationView{
            VStack{
                Image(images[currentIndex])
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 100, maxWidth: 300, minHeight: 100, maxHeight: 300)
                    .padding(.top, -100)
        
                
                Button(action: {
                    if currentIndex == images.count - 1 {
                        currentIndex = 0  // Reset to the first index if at the last
                    } else {
                        currentIndex += 1  // Otherwise, increment the index
                    }
            
                }, label: {
                    Text("Next")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                })
                
                .buttonStyle(.borderedProminent)
                .frame(maxWidth: .infinity, alignment: .trailing)  // Aligns the button to the right
                .padding(.trailing, 20)  // Adds right padding to push it a bit to the left from the edge
                
                
                
                
                

                
            }
            .navigationTitle("Image Joke")
        }
    }
}


#Preview {
    ImageView()
}
