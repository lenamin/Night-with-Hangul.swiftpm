import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundImage()
            HStack {
                Spacer()
                FiveByFiveGrid()
                Spacer()
            }
                
        }
//            .overlay(Image("sky-pad")
//                .resizable()
//                .scaledToFill()
//                .ignoresSafeArea(.all)) // overlay
    }
}
