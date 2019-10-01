//
//  Queen.swift
//  ChessGame
//
//  Created by JK on 2019/09/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Queen : Piece{
    init(with color: Color, position: Position) {
        super.init(with: color, type: .queen, position: position, directions: Direction.compassEveryone())
    }

    //MARK:- FACTORY METHOD
    static func makeWhite(at position: Position) -> Queen {
        return Queen(with: .white, position: position)
    }

    static func makeBlack(at position: Position) -> Queen {
        return Queen(with: .black, position: position)
    }
}
