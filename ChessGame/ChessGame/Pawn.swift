//
//  Pawn.swift
//  ChessGame
//
//  Created by temphee.Reid on 03/10/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

enum ChessPieceColor {
    case white
    case black
}

class Pawn {
    
    let color : ChessPieceColor
    
    init(color: ChessPieceColor) {
        self.color = color
    }
    
}
