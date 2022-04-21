//
//  File.swift
//  Night-with-Hangul
//
//  Created by Lena on 2022/04/20.
//

import Foundation
import SwiftUI
import AVKit

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


class SoundSetting: ObservableObject {
    static let instance = SoundSetting()
    
    var player: AVAudioPlayer?
    
    func playBgm(){
        guard let url = Bundle.main.url(forResource: "bgm", withExtension: ".mp3") else {return}
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Oops! \(error.localizedDescription)")
        }
    }
}


