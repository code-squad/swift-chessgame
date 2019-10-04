//
//  Pawn.swift
//  ChessGame
//
//  Created by temphee.Reid on 03/10/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

typealias PawnColor = Pawn.Color

class Pawn {
    
    enum Color {
        case white
        case black
    }
    
    let color : Color
    
    init(color: Color) {
        self.color = color
    }
    
    convenience init() {
        self.init(color: .white)
    }
    
}
