//
//  Board.swift
//  ChessGame
//
//  Created by temphee.Reid on 04/10/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

enum ChessGameError : Error {
    case invalidRange
}


class Board {
    var pawns : [Pawn]
    
    init() {
        self.pawns = []
    }
    
    func add(pawn: Pawn) {
        self.pawns.append(pawn)
    }
    
    func pawnCount() -> Int {
        return pawns.count
    }
    
    func color(pawnIndex: Int) throws -> PawnColor {
        guard pawnIndex < pawns.count else {
            throw ChessGameError.invalidRange
        }
        
        return self.pawns[pawnIndex].color
    }
}
