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
    var whitePawns : [Pawn]
    var blackPawns : [Pawn]
    
    init() {
        self.whitePawns = []
        self.blackPawns = []
    }
    
    func initialize() {
        for _ in 1...8 {
            add(pawn: Pawn(color: Pawn.Color.black))
            add(pawn: Pawn(color: Pawn.Color.white))
        }
    }
    
    func add(pawn: Pawn) {
        if pawn.color == Pawn.Color.black {
            blackPawns.append(pawn)
        }
        else {
            whitePawns.append(pawn)
        }
    }
    
    func pawnCount() -> Int {
        return blackPawns.count + whitePawns.count
    }
    
    func blackPawnCount() -> Int {
        return blackPawns.count
    }
    
    func whitePawnCount() -> Int {
        return whitePawns.count
    }
    
    func blackPawnResult() -> String {
        return pawnResult(pawns: self.blackPawns)
    }
    
    func whitePawnResult() -> String {
        return pawnResult(pawns: self.whitePawns)
    }
    
    func emptyPosResult() -> String {
        return "--------\n"
    }
    
    private func pawnResult(pawns: [Pawn]) -> String {
        var result : String = ""
        
        for pawn in pawns {
            result.append(pawn.representation)
        }
        result.append("\n")
        
        return result
        
    }

    func print() -> String {
        let boardResult : String =
        """
        \(emptyPosResult())
        \(blackPawnResult())
        \(emptyPosResult())
        \(emptyPosResult())
        \(emptyPosResult())
        \(emptyPosResult())
        \(whitePawnResult())
        \(emptyPosResult())
        """
        
        return boardResult
    }
}
