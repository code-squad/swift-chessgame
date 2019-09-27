//
//  Board.swift
//  ChessGame
//
//  Created by JK on 2019/09/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Board {
    private var whitePawns : [Pawn]
    private var blackPawns : [Pawn]

    init() {
        whitePawns = [Pawn]()
        blackPawns = [Pawn]()
    }
    
    var count : Int {
        return whitePawns.count + blackPawns.count
    }
    
    func whitePawn(at index : Int) -> Pawn {
        return whitePawns[index]
    }

    func blackPawn(at index : Int) -> Pawn {
        return blackPawns[index]
    }

    func addWhite(pawn : Pawn) {
        whitePawns.append(pawn)
    }

    func addBlack(pawn : Pawn) {
        blackPawns.append(pawn)
    }

    func initialize() {
        (0..<8).forEach { _ in
            addWhite(pawn: Pawn(with: Pawn.Color.white, representation: Pawn.Representation.white))
        }
        (0..<8).forEach { _ in
            addBlack(pawn: Pawn(with: Pawn.Color.black, representation: Pawn.Representation.black))
        }
    }
    
    func whitePawnsResult() -> String {
        return makePawnsResult(with: whitePawns)
    }
    
    func blackPawnsResult() -> String {
        return makePawnsResult(with: blackPawns)
    }
    
    private func makePawnsResult(with pawns : Array<Pawn>) -> String {
        var result = ""
        for pawn in pawns {
            result += pawn.representation
        }
        return result
    }
    
    private func makeBlackLine() -> String{
        return "________"
    }
    
    func makeBoardResult() -> String {
        var boardResult = Array<String>()
        boardResult.append(makeBlackLine())
        boardResult.append(blackPawnsResult())
        boardResult.append(makeBlackLine())
        boardResult.append(makeBlackLine())
        boardResult.append(makeBlackLine())
        boardResult.append(makeBlackLine())
        boardResult.append(whitePawnsResult())
        boardResult.append(makeBlackLine())
        return boardResult.joined(separator: "\n")
    }
}
