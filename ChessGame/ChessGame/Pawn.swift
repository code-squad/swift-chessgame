//
//  Pawn.swift
//  ChessGame
//
//  Created by JK on 2019/09/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Pawn : Piece{
    static let WHITE_POSITION_INDEX = 1
    static let BLACK_POSITION_INDEX = 6
    
    init(with color: Color, position: Position) {
        super.init(with: color, type: .pawn, position: position)
    }

    func isStartingPosition() -> Bool {
        let y = super.position.y
        
        if isWhite() {
            return y == Self.WHITE_POSITION_INDEX
        }
        
        return y == Self.BLACK_POSITION_INDEX
    }
    
    override func verifyMove(to target: Piece) throws -> Direction.Compass {
        let directions = isWhite() ? Direction.compassForWhitePawn() : Direction.compassForBlackPawn()
        let targetDirection = direction(to: target)
        guard targetDirection != nil && directions.contains(targetDirection!) else { throw Direction.InternalError.invalidMovePosition }
        
        let targetDegree = degree(to: target)
        if (!isStartingPosition() && targetDegree.isOverOneY()) {
            throw Direction.InternalError.invalidMovePosition
        }
        if (isStartingPosition() && !targetDegree.isUnderThreeY()) {
            throw Direction.InternalError.invalidMovePosition
        }
        return targetDirection!
    }
    
    //MARK:- FACTORY METHOD
    static func makeWhite(at position: Position) -> Pawn {
        return Pawn(with: .white, position: position)
    }

    static func makeBlack(at position: Position) -> Pawn {
        return Pawn(with: .black, position: position)
    }
}
