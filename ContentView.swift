import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundImage()
            VStack {
                Image("rabbit")
                FiveByFiveGrid()

            }
                
                
        }
//            .overlay(Image("sky-pad")
//                .resizable()
//                .scaledToFill()
//                .ignoresSafeArea(.all)) // overlay
    }
}
