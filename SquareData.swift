////
////  File.swift
////  Night-with-Hangul
////
////  Created by Lena on 2022/04/20.
////
//
//import Foundation
//import SwiftUI
//
//struct Squares : Identifiable {
//    let id = UUID()
//    var row : Int
//    var column : Int
//    var imageName : String
//}
//
//extension Squares {
//    static func all() -> [Squares] {
//        return [
//            Squares(row: 0, column: 0, imageName: "RectangleBorder"),
//            Squares(row: 0, column: 1, imageName: "RectangleBorder"),
//            Squares(row: 0, column: 2, imageName: "RectangleBorder"),
//            Squares(row: 0, column: 3, imageName: "RectangleBorder"),
//            Squares(row: 0, column: 4, imageName: "RectangleBorder"),
//            Squares(row: 1, column: 0, imageName: "RectangleBorder"),
//            Squares(row: 1, column: 1, imageName: "RectangleBorder"),
//            Squares(row: 1, column: 2, imageName: "RectangleBorder"),
//            Squares(row: 1, column: 3, imageName: "RectangleBorder"),
//            Squares(row: 1, column: 4, imageName: "RectangleBorder"),
//            Squares(row: 2, column: 0, imageName: "RectangleBorder"),
//            Squares(row: 2, column: 1, imageName: "RectangleBorder"),
//            Squares(row: 2, column: 2, imageName: "RectangleBorder"),
//            Squares(row: 2, column: 3, imageName: "RectangleBorder"),
//            Squares(row: 2, column: 4, imageName: "RectangleBorder"),
//            Squares(row: 3, column: 0, imageName: "RectangleBorder"),
//            Squares(row: 3, column: 1, imageName: "RectangleBorder"),
//            Squares(row: 3, column: 2, imageName: "RectangleBorder"),
//            Squares(row: 3, column: 3, imageName: "RectangleBorder"),
//            Squares(row: 3, column: 4, imageName: "RectangleBorder"),
//            Squares(row: 4, column: 0, imageName: "RectangleBorder"),
//            Squares(row: 4, column: 1, imageName: "RectangleBorder"),
//            Squares(row: 4, column: 2, imageName: "RectangleBorder"),
//            Squares(row: 4, column: 3, imageName: "RectangleBorder"),
//            Squares(row: 4, column: 4, imageName: "RectangleBorder")
//        ]
//    }
//}


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
