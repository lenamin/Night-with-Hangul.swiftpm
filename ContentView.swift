import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            BackgroundImage()
            VStack {
                Rabbit()
                FiveByFiveSquares()
                
            }
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
            .padding(.bottom, 10)
    }
}
