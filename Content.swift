//
//  File.swift
//  Night-with-Hangul
//
//  Created by Lena on 2022/04/20.
//

import Foundation
import SwiftUI

struct Content: Codable, Identifiable, Hashable {
    var index: Int
    var alphabet: String
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    var pathPosition: [Int]
    
    var id = UUID()
    
    enum CodingKeys: CodingKey {
        case index
        case alphabet
        case imageName
        case pathPosition
    }
}
