//
//  Knight.swift
//  ChessGame
//
//  Created by JK on 2019/09/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Knight : Piece{
    init(with color: Color, position: Position) {
        super.init(with: color, type: .knight, position: position, directions: Direction.compassForKnight())
    }
    
    //MARK:- FACTORY METHOD
    static func makeWhite(at position: Position) -> Knight {
        return Knight(with: .white, position: position)
    }

    static func makeBlack(at position: Position) -> Knight {
        return Knight(with: .black, position: position)
    }
}
