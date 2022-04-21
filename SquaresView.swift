//
//  File.swift
//  Night-with-Hangul
//
//  Created by Lena on 2022/04/19.
//

import Foundation
import SwiftUI
let myYellow = Color.init(red: 255/255, green: 205/255, blue: 75/255)
// background image
struct BackgroundImage: View {
    var body: some View {
        Image("sky-pad")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
    }
}

// Rounded Rectangle with Border
struct RoundedRectangleBorder: View {
    var body: some View {
//            RoundedRectangle(cornerRadius: 5)
//                .stroke(lineWidth: 3)
//                .foregroundColor(.yellow)
//                .frame(width: 100, height: 100)
//                .background(.black)
//                .opacity(0.5)
        Image("RectangleBorder")
    }
}

// Rounded Rectangle Filled
struct RoundedRectangleFilledYellow: View {
    var body: some View {
//        RoundedRectangle(cornerRadius: 5)
//            .foregroundColor(.yellow)
//            .frame(width: 100, height: 100)
        Image("RectangleFilledYellow")
    }
}

struct RoundedRectangleFilledRed: View {
    var body: some View {
        Image("RectangleFilledRed")
    }
}

enum Positions: String, CaseIterable, Equatable {
    case pos1
    case pos2
    case pos3
    case pos4
    case pos5
    case pos6
    case pos7
    case pos8
    case pos9
    case pos10
    case pos11
    case pos12
    case pos13
    case pos14
    case pos15
    case pos16
    case pos17
    case pos18
    case pos19
    case pos20
    case pos21
    case pos22
    case pos23
    case pos24
    case pos25
}


// 5*5 Grid for moving
struct FiveByFiveSquares: View {
    
    var row: [GridItem] = Array(repeating: GridItem(.fixed(100), spacing: nil, alignment: nil), count: 5)
    
    @State var selectedItems: [Positions] = []
    
    var body: some View {
        LazyHGrid(rows: row, alignment: .center, spacing: 10) {
            
            ForEach(Positions.allCases, id: \.self) { position in
                GridColumn(position: position, positions: $selectedItems)
            }
        }
        .padding(20)
    }
}

// button which shows what users tap
// if users tap specific position, then append it to array positions
struct GridColumn: View {
    let position: Positions
    @Binding var positions: [Positions]
    
    var body: some View {
        Button(action: {
            if positions.contains(position) {
                positions.removeAll { $0 == position }
            } else {
                positions.append(position)
            }
        }){
            if positions.contains(position) {
                RoundedRectangleFilledYellow()
            } else {
                RoundedRectangleBorder()
            }
        } // Button
    }
}

struct AnyButton : View {
    @State var buttonText: String
    var body : some View {
        Text(buttonText)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.black)
            .padding(4)
            .border(myYellow, width: 1)
            .padding(5)
            .background(myYellow)
            .cornerRadius(9)
    }
}


