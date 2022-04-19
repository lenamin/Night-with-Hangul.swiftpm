import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            BackgroundImage()
            VStack {
                Image("rabbit-final")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .padding()

                FiveByFiveGrid()
                
            }
        }

    }
}
