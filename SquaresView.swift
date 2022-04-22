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

//struct ButtonPlayG: View {
//    var body: some View {
//        Button(action: {
//            SoundSetting.instance.playG()
//        }){
//
//        }
//    }
//}

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
                SoundSetting.instance.playG()

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
        /*
        Button(action: { //그리드를 버튼으로 만들면서 조건을 검사하고 있지. 그리고 조건에 따라 형태를 다르게 하고 있다
            if positions.contains(position.rawValue) {
                if positions.contains(contents[0].pathPosition.description) {
                    // if once tapped, toggle again
                    // positions.removeAll { $0 == position.rawValue }
                    positions.removeAll() { $0 == position.rawValue }
                    
                    //                } else if !positions.contains(contents[0].pathPosition.description) {
                    //                    wrongPositions.append(positions.description)
                    //                }
                    //                positions.removeAll { $0 == position }
                } else {
                    positions.append(position.rawValue)
                }
            })
            {
                if positions.contains(position.rawValue) {
                    RoundedRectangleFilledYellow()
                    
                    //            } else if !contents[0].pathPosition.contains(positions.startIndex + 1) {
                    //                RoundedRectangleFilledRed()
                    
                } else if !wrongPositions.contains(contents[0].pathPosition.description) {
                    RoundedRectangleFilledRed()
                } else {
                    RoundedRectangleBorder()
                }
            } //Button
        }
               }
               }
               */

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


