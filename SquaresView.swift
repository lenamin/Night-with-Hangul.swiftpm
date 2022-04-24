//
//  File.swift
//  Night-with-Hangul
//
//  Created by Lena on 2022/04/19.
//

import Foundation
import SwiftUI
let myYellow = Color.init(red: 255/255, green: 205/255, blue: 75/255)

// 5*5 Grid for moving
struct FiveByFiveSquares: View {
    
    //var row: [GridItem] = Array(repeating: GridItem(.fixed(40.0), spacing: nil, alignment: .center), count: 5)
    @State var selectedItems: [Positions] = []
    
    var body: some View {
        GeometryReader { geo in
            LazyHGrid(rows: Array(repeating: GridItem(.flexible(), spacing: nil, alignment: .center), count: 5), alignment: .center, spacing: nil) {
                ForEach(Positions.allCases, id: \.self) { position in
                    GridColumn(position: position, positions: $selectedItems)
                        //.frame(width: geo.size.width / 10, height: geo.size.width / 10)
                } //Loop
                .frame(width: geo.size.width / 11, height: geo.size.height / 5.5)

            } //Grid
            //.frame(width: geo.size.width / 2, height: geo.size.width / 2)
            .position(x: geo.size.width / 2, y: geo.size.height / 2)
        } //Geo

        
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
                Image("RectangleFilledYellow")
                    .resizable()
                    .frame(minWidth: 50, minHeight: 50)
            } else {
                Image("RectangleBorder")
                    .resizable()
                    .frame(minWidth: 50, minHeight: 50)
            }
        } // Button
    }
}

struct SquaresView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
