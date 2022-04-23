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
        Image("RectangleBorder")
    }
}

// Rounded Rectangle Filled
struct RoundedRectangleFilledYellow: View {
    var body: some View {
        Image("RectangleFilledYellow")
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
                if IsViewExist.view.isViewG {
                    SoundSetting.instance.playG()
                } else if IsViewExist.view.isViewN {
                    SoundSetting.instance.playN()
                } else if IsViewExist.view.isViewD {
                    SoundSetting.instance.playD()
                } else if IsViewExist.view.isViewL {
                    SoundSetting.instance.playL()
                } else if IsViewExist.view.isViewM {
                    SoundSetting.instance.playM()
                } else if IsViewExist.view.isViewB {
                    SoundSetting.instance.playB()
                } else if IsViewExist.view.isViewS {
                    SoundSetting.instance.playS()
                } else if IsViewExist.view.isViewO {
                    SoundSetting.instance.playO()
                } else if IsViewExist.view.isViewJ {
                    SoundSetting.instance.playJ()
                } else if IsViewExist.view.isViewCh {
                    SoundSetting.instance.playCh()
                } else if IsViewExist.view.isViewK {
                    SoundSetting.instance.playK()
                } else if IsViewExist.view.isViewT {
                    SoundSetting.instance.playT()
                } else if IsViewExist.view.isViewP {
                    SoundSetting.instance.playP()
                } else if IsViewExist.view.isViewH {
                    SoundSetting.instance.playH()
                }
                
     
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


