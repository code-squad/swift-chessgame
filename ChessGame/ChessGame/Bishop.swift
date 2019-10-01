//
//  Bishop.swift
//  ChessGame
//
//  Created by JK on 2019/09/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Bishop : Piece{
    init(with color: Color, position: Position) {
        super.init(with: color, type: .bishop, position: position, directions: Direction.compassDiagonal())
    }
    
    //MARK:- FACTORY METHOD
    static func makeWhite(at position: Position) -> Bishop {
        return Bishop(with: .white, position: position)
    }

    static func makeBlack(at position: Position) -> Bishop {
        return Bishop(with: .black, position: position)
    }
}
