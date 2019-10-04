//
/******************************************************************************
 * File Name        : Board.swift
 * Description      : ChessGame
 *******************************************************************************
 * Copyright (c) 2002-2019 KineMaster Corp. All rights reserved.
 * https://www.kinemastercorp.com/
 *
 * THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR
 * PURPOSE.
 ******************************************************************************/

import Foundation

class Board {
    private var whitePawns: [Pawn]
    private var blackPawns: [Pawn]
    
    init() {
        self.whitePawns = [Pawn]()
        self.blackPawns = [Pawn]()
    }
    
    func add(pawn: Pawn, to color:Pawn.PieceColor) {
        switch color {
        case .white:
            whitePawns.append(pawn)
        case .black:
            blackPawns.append(pawn)
        }
    }
    
    func initialize() {
        for _ in 1...8 {
            add(pawn: Pawn(with: .white), to: .white)
            add(pawn: Pawn(with: .black), to: .black)
        }
    }
    
    func makePawnsResult(with pawns: [Pawn]) -> String {
        var result = ""
        for pawn in pawns {
            result += pawn.color.description
        }
        return result
    }
    
    func whitePawnsResult() -> String {
        return makePawnsResult(with: whitePawns)
    }
    
    func blackPawnsResult() -> String {
        return makePawnsResult(with: blackPawns)
    }
    
    func printBoard() {
        print("--------")
        print(blackPawnsResult())
        print("--------")
        print("--------")
        print("--------")
        print("--------")
        print(whitePawnsResult())
        print("--------")
    }
}
