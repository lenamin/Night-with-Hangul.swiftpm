//
//  File.swift
//  Night-with-Hangul
//
//  Created by Lena on 2022/04/19.
//

import Foundation
import SwiftUI

struct KoreanAlphabetRow: View {
    var content: Content
    
    var body: some View {
        content.image
            .resizable()
            .frame(width:300)
            .scaledToFit()

    }
}

struct hangeulG: View {
    var body: some View {
        KoreanAlphabetRow(content: contents[0])
    }
}
