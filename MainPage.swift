//
//  File.swift
//  Night-with-Hangul
//
//  Created by Lena on 2022/04/21.
//

import SwiftUI
import AVKit


struct MainPage: View {

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundImage()
                VStack {
                    Spacer()
                    Spacer()
                    Rabbit()
                        .padding(.bottom, 40)
                        .padding(.top, 20)
                    Title()
                    NavigationLink(destination: ContentView(), label: {
                        Image("goButton")
                            .padding(.bottom, 10)
                    }) // NavigationLink
                    .navigationBarTitleDisplayMode(.inline)
                    Spacer()
                } // VStack
                .overlay(Image("hangeulAll").scaledToFit().opacity(0.3))
                    
            } // ZStack
        } // NavigationView
        .navigationViewStyle(.stack)
        .accentColor(myYellow)
        // to be seen full screen
    }
}


struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        
        MainPage()

    }
}

// go back through swipe gesture
extension UINavigationController: ObservableObject, UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}


