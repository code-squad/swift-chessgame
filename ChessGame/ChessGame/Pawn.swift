//
//  Pawn.swift
//  ChessGame
//
//  Created by sungchan.you on 2019/10/03.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Pawn {
    
    enum Color {
        case white, black
    }
    
    let color: Color

    init(color: Pawn.Color) {
        self.color = color
    }
}
