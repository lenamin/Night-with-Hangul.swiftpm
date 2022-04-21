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
            .frame(width:300)
            .scaledToFit()

    }
}

struct hangeulG: View {
    var body: some View {
        KoreanAlphabetRow(content: contents[0])
    }
}

struct hangeulN: View {
    var body: some View {
        KoreanAlphabetRow(content: contents[1])
    }
}

struct hangeulD: View {
    var body: some View {
        KoreanAlphabetRow(content: contents[2])
    }
}

struct hangeulL: View {
    var body: some View {
        KoreanAlphabetRow(content: contents[3])
    }
}

struct hangeulM: View {
    var body: some View {
        KoreanAlphabetRow(content: contents[4])
    }
}

struct hangeulB: View {
    var body: some View {
        KoreanAlphabetRow(content: contents[5])
    }
}

struct hangeulS: View {
    var body: some View {
        KoreanAlphabetRow(content: contents[6])
    }
}

struct hangeulO: View {
    var body: some View {
        KoreanAlphabetRow(content: contents[7])
    }
}

struct hangeulJ: View {
    var body: some View {
        KoreanAlphabetRow(content: contents[8])
    }
}

struct hangeulCh: View {
    var body: some View {
        KoreanAlphabetRow(content: contents[9])
    }
}

struct hangeulK: View {
    var body: some View {
        KoreanAlphabetRow(content: contents[10])
    }
}

struct hangeulT: View {
    var body: some View {
        KoreanAlphabetRow(content: contents[11])
    }
}

struct hangeulP: View {
    var body: some View {
        KoreanAlphabetRow(content: contents[12])
    }
}

struct hangeulH: View {
    var body: some View {
        KoreanAlphabetRow(content: contents[13])
    }
}


struct KoreanAlphabetView_Previews: PreviewProvider {
    
    static var previews: some View {
        KoreanAlphabetRow(content: contents[0])
    }
}
