//
//  File.swift
//  Night-with-Hangul
//
//  Created by Lena on 2022/04/21.
//

import SwiftUI

struct MainPage: View {

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundImage()
                VStack {
                    Spacer()
                    Rabbit()
                        .padding(.bottom, 10)
                    Title()
                    NavigationLink(destination: ContentView(), label: {
                        Image("goButton")
                    }) // NavigationLink
                    
                    //.navigationBarBackButtonHidden(true)
                    .navigationBarTitleDisplayMode(.inline)
                } // VStack
                .overlay(Image("hangeulAll").scaledToFit().opacity(0.3).padding(.bottom, 10))
                    
            } // ZStack
        } // NavigationView
        .navigationViewStyle(.stack)
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


