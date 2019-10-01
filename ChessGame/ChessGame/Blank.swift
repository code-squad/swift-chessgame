//
//  Blank.swift
//  ChessGame
//
//  Created by JK on 2019/09/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Blank : Piece{
    init(with position: Position) {
        super.init(with: .none, type: .blank, position: position)
    }
    
    override func verifyMove(to target: Piece) throws -> Direction.Compass {
        throw Direction.InternalError.invalidMovePosition
    }
    
    //MARK:- FACTORY METHOD
    static func makeBlank(at position: Position) -> Blank {
        return Blank(with: position)
    }
}
