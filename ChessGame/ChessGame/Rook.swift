//
//  Rook.swift
//  ChessGame
//
//  Created by JK on 2019/09/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Rook : Piece{
    init(with color: Color, position: Position) {
        super.init(with: color, type: .rook, position: position, directions: Direction.compassLinear())
    }
    
    //MARK:- FACTORY METHOD
    static func makeWhite(at position: Position) -> Rook {
        return Rook(with: .white, position: position)
    }

    static func makeBlack(at position: Position) -> Rook {
        return Rook(with: .black, position: position)
    }
}
