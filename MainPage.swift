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
                    Image("sky-pad")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea(.all)
                        .frame(width: geometry.size.width * 1.001, height: geometry.size.height * 1.09)
                    
                    VStack {
                        Image("rabbit-final") // Rabbit
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width / 4, height: geometry.size.height / 3)
                        
                        Image("nightWithHangeulfinal") // Title
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.7, height: geometry.size.height * 0.1)
                            .padding(geometry.size.width * 0.05)
                        
                        NavigationLink(destination: ContentView().navigationBarHidden(true), label: {
                            Image("goButton")
                                .frame(width: geometry.size.width / 3, height: geometry.size.height / 12)
                        }) // NavigationLink
                        .navigationBarTitleDisplayMode(.inline)
                    } // VStack
                    .overlay(Image("hangeulAll")
                        .resizable()
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.4)
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
            .previewInterfaceOrientation(.landscapeLeft)

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


