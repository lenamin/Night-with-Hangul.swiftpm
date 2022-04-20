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

// Rounded Rectangle with Border
struct RoundedRectangleBorder: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .stroke(lineWidth: 3)
            .foregroundColor(.yellow)
            .frame(width: 100, height: 100)
            .background(.black)
            .opacity(0.5)
    }
}

// Rounded Rectangle Filled
struct RoundedRectangleFilled: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .foregroundColor(.yellow)
            .frame(width: 100, height: 100)
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
struct FiveByFiveGrid: View {

    var row: [GridItem] = Array(repeating: GridItem(.fixed(100), spacing: nil, alignment: nil), count: 5)
    
    @State var selectedItems: [Positions] = []

    
    var body: some View {
        LazyHGrid(rows: row, alignment: .center, spacing: 10) {
            
            ForEach(Positions.allCases, id: \.self) { position in
                GridColumn(position: position, positions: $selectedItems)
            }
            /*
            ForEach(squareNumber, id: \.self) { item in
                RoundedRectangleBorder()
                    .background(item == selectedItem ? Color.yellow : Color.clear)
                    .onTapGesture {
                        selectedItem = item
                    }
//                Button(action: {didSelected.toggle()
//                }) {
//                    RoundedRectangleBorder()
//                }
            }
        } // Loop
             */
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
            RoundedRectangleBorder()
                .background(positions.contains(position) ? .yellow : .clear)
        }
    }
}

// indexing Grid
struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            return grid[(row * columns) + column]
        }
        set {
            grid[(row * columns) + column] = newValue
        }
    }
}
