//
//  King.swift
//  ChessGame
//
//  Created by JK on 2019/09/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class King : Piece{
    init(with color: Color, position: Position) {
        super.init(with: color, type: .king, position: position, directions: Direction.compassEveryone())
    }
    
    override func verifyMove(to target: Piece) throws -> Direction.Compass {
        let direction = try? super.verifyMove(to: target)
        let targetDegree = degree(to: target)
        if (targetDegree.isOverOneX() || targetDegree.isOverOneY()) {
            throw Direction.InternalError.invalidMovePosition
        }
        return direction!
    }
    
    //MARK:- FACTORY METHOD
    static func makeWhite(at position: Position) -> King {
        return King(with: .white, position: position)
    }

    static func makeBlack(at position: Position) -> King {
        return King(with: .black, position: position)
    }
}
