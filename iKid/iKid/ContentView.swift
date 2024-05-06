//
//  ContentView.swift
//  iKid
//
//  Created by Ahmed Ghaddah on 5/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                CategoryView(category: "Good", question: "Why do programmers prefer dark mode?", punchline: "Because light attracts bugs!")
            }
            .tabItem {
                Label("Good", systemImage: "1.circle")
            }
            
            NavigationView {
                CategoryView(category: "Pun", question: "How does a penguin build its house?", punchline: "Igloos it together!")
            }
            .tabItem {
                Label("Pun", systemImage: "2.circle")
            }
            
            NavigationView {
                CategoryView(category: "Dad", question: "Why did the scarecrow win an award?", punchline: "Because he was outstanding in his field!")
            }
            .tabItem {
                Label("Dad", systemImage: "3.circle")
            }
            NavigationView {
                KnockKnockView(stages: ["Knock knock", "Who's there?", "Lettuce", "Lettuce who?", "Lettuce in, it's cold out here!"])
            }
            .tabItem {
                Label("Knock-Kncok", systemImage: "4.circle")
            }
        }
    }
}

struct CategoryView: View {
    var category: String
    var question: String
    var punchline: String
    @State private var showPunchline = false
    
    var body: some View {
        VStack {
            Spacer()
            if showPunchline {
                Text(punchline)
                    .padding()
                    .font(.title3)

            } else {
                Text(question)
                    .padding()
                    .font(.title3)

            }
            Spacer()
            Button("Next") {
                withAnimation(.easeInOut) {
                    showPunchline.toggle()
                }
            }
            .padding()
            .buttonStyle(.borderedProminent)
            .frame(maxWidth: .infinity, alignment: .trailing)
            
        }
        .navigationTitle(category)
    }
}




#Preview {
    ContentView()
}
