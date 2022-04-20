import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            BackgroundImage()
            VStack {
                HStack {
                    Spacer()
                    Instruction()
                    Spacer()
                }
                Spacer()
                hangeulG()
                FiveByFiveSquares()
                Spacer()
                
                AnyButton(buttonText: "Next")
                    .padding(10)
            } // VStack
        }
    }
}

// rabbit
struct Rabbit: View {
    var body: some View {
        Image("rabbit-final")
            .resizable()
            .scaledToFit()
            .frame(width: 100)
            .padding(20)
    }
}

struct Instruction: View {
    var body: some View {
        Image("Night with Hangeul")
            .resizable()
            .frame(minWidth: 600)
            .scaledToFit()
            .padding(150)
    }
}
