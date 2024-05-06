import SwiftUI

struct KnockKnockView: View {
    let stages: [String]
    @State private var currentStage = 0
    @State private var showJoke = true
    
    var body: some View {
        NavigationView {
            VStack {
                if showJoke && !stages.isEmpty {
                    
                    Text(stages[currentStage])
                        .font(.title3)
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                        .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                        .animation(.easeInOut, value: currentStage)
                    
                    Spacer() // Pushes the button to the bottom
                    VStack {
                        Spacer() // This spacer will push the button to the bottom
                        HStack {
                            Spacer() // This spacer will push the button to the right
                            Button(action: {
                                if currentStage < stages.count - 1 {
                                    currentStage += 1
                                } else {
                                    currentStage = 0
                                }
                            }) {
                                Text(currentStage < stages.count - 1 ? "Next" : "Start Over")
                                    .padding()
                                    .frame(maxHeight:22)
        
                                    .background(.blue)
                                    .foregroundColor(.white)
                            }
    
                            .buttonStyle(.borderedProminent)
                            .padding(.trailing, 20) // Increased right padding to move the button left
                            .padding(.bottom, 20)
                        }
                    }
                }
            }
            .navigationTitle("Knock Knock Joke")
        }
    }
}


#Preview {
    KnockKnockView(stages: ["Knock knock", "Who's there?", "Lettuce", "Lettuce who?", "Lettuce in, it's cold out here!"])

}
