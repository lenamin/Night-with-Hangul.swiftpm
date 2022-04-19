//
//  File.swift
//  Night-with-Hangul
//
//  Created by Lena on 2022/04/19.
//

import Foundation
import SwiftUI

// background image
struct BackgroundImage: View {
    var body: some View {
        Image("sky-pad")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
    }
}

// 5*5 Grid for moving
struct FiveByFiveGrid: View {
    let column = [GridItem(.fixed(100), spacing: nil, alignment: nil),
                  GridItem(.fixed(100), spacing: nil, alignment: nil),
                  GridItem(.fixed(100), spacing: nil, alignment: nil),
                  GridItem(.fixed(100), spacing: nil, alignment: nil),
                  GridItem(.fixed(100), spacing: nil, alignment: nil)]
    
    
    var body: some View {
        LazyVGrid(columns: column, alignment: .center, spacing: 10) {
            
            ForEach((0..<25), id: \.self) { item in
                RoundedRectangle(cornerRadius: 5)
                    .stroke(lineWidth: 3)
                    .foregroundColor(.yellow)
                    .frame(width: 100, height: 100)
                    .background(.black)
                    .opacity(0.5)
            }
        }
        .padding(20)
    }
}
