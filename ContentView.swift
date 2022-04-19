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

    }
}
