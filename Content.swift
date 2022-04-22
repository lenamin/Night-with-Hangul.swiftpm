//
//  File.swift
//  Night-with-Hangul
//
//  Created by Lena on 2022/04/20.
//

import Foundation
import SwiftUI
import AVKit
import AVFoundation

struct Content: Codable, Identifiable {
    var index: Int
    var alphabet: String
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    var pathPosition: [String]
    
    var id = UUID()
    
    enum CodingKeys: CodingKey {
        case index
        case alphabet
        case imageName
        case pathPosition
    }
}

// for FiveByFiveSquares()
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
    
    var description: String {
        switch self {
        case .pos1: return "pos1"
        case .pos2: return "pos2"
        case .pos3: return "pos3"
        case .pos4: return "pos4"
        case .pos5: return "pos5"
        case .pos6: return "pos6"
        case .pos7: return "pos7"
        case .pos8: return "pos8"
        case .pos9: return "pos9"
        case .pos10: return "pos10"
        case .pos11: return "pos11"
        case .pos12: return "pos12"
        case .pos13: return "pos13"
        case .pos14: return "pos14"
        case .pos15: return "pos15"
        case .pos16: return "pos16"
        case .pos17: return "pos17"
        case .pos18: return "pos18"
        case .pos19: return "pos19"
        case .pos20: return "pos20"
        case .pos21: return "pos21"
        case .pos22: return "pos22"
        case .pos23: return "pos23"
        case .pos24: return "pos24"
        case .pos25: return "pos25"

        }
    }
}


class SoundSetting: ObservableObject {
    static let instance = SoundSetting()
    
    var bgmPlayer: AVAudioPlayer?
    var pronPlayer: AVAudioPlayer?
    
    func playBgm(){
        guard let url = Bundle.main.url(forResource: "bgm", withExtension: ".mp3") else {return}
        do {
            bgmPlayer = try AVAudioPlayer(contentsOf: url)
            bgmPlayer?.play()
            bgmPlayer?.numberOfLoops = -1
        } catch let error {
            print("It occurs \(error.localizedDescription)")
        }
    }
    
    func playG(){
        guard let url = Bundle.main.url(forResource: "PronunciationG", withExtension: ".mp3") else {return}
        
        do {
            pronPlayer = try AVAudioPlayer(contentsOf: url)
            pronPlayer?.play()
        } catch let error {
            print("It occurs \(error.localizedDescription)")
        }

    }
    
    
}
