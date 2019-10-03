//
//  Pawn.swift
//  ChessGame
//
//  Created by sungchan.you on 2019/10/03.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Pawn: Equatable, CustomStringConvertible {
    
    enum Color {
        case white, black
    }
    
    let color: Color
    
    init() {
        self.init(color: .white)
    }

    init(color: Pawn.Color) {
        self.color = color
    }
    
    var description: String {
        switch color {
        case .white : return "\u{2659}"
        case .black : return "\u{265F}"
        }
    }
}
