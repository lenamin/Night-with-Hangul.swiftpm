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
            GeometryReader { geometry in
                ZStack {
                    BackgroundImage()
                    VStack(spacing: 10) {
                        Image("rabbit-final") // Rabbit
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width / 4)
                            .padding(.bottom, 40)
                            .padding(.top, 50)
                        
                        Image("nightWithHangeulfinal") // Title
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.7)
                            .padding(5)
                        
                        NavigationLink(destination: ContentView().navigationBarHidden(true), label: {
                            Image("goButton")
                                .padding(.bottom, 10)
                        }) // NavigationLink
                        .navigationBarTitleDisplayMode(.inline)
                    } // VStack
                    .overlay(Image("hangeulAll")
                        .resizable()
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.5)
                        .opacity(0.2))
                } //ZStack
            } // Geometry
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


