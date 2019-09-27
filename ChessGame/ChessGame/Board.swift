//
//  Board.swift
//  ChessGame
//
//  Created by JK on 2019/09/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Board {
    private var whitePieces : [Piece]
    private var whitePawns : [Piece]
    private var blackPieces : [Piece]
    private var blackPawns : [Piece]

    init() {
        whitePieces = [Piece]()
        whitePawns = [Piece]()
        blackPieces = [Piece]()
        blackPawns = [Piece]()
    }
    
    var count : Int {
        return whitePieces.count + blackPieces.count
            + whitePawns.count + blackPawns.count
    }
    
    func whitePawn(at index : Int) -> Piece {
        return whitePawns[index]
    }

    func blackPawn(at index : Int) -> Piece {
        return blackPawns[index]
    }

    func addWhite(piece : Piece) {
        whitePieces.append(piece)
    }

    func addWhite(pawn : Piece) {
        whitePawns.append(pawn)
    }

    func addBlack(piece : Piece) {
        blackPieces.append(piece)
    }

    func addBlack(pawn : Piece) {
        blackPawns.append(pawn)
    }

    func initialize() {
        addWhite(piece: Piece.makeWhiteRook())
        addWhite(piece: Piece.makeWhiteKnight())
        addWhite(piece: Piece.makeWhiteBishop())
        addWhite(piece: Piece.makeWhiteQueen())
        addWhite(piece: Piece.makeWhiteKing())
        addWhite(piece: Piece.makeWhiteBishop())
        addWhite(piece: Piece.makeWhiteKnight())
        addWhite(piece: Piece.makeWhiteRook())
        (0..<8).forEach { _ in
            addWhite(pawn: Piece(with: Pawn.Color.white, representation: Pawn.Representation.white))
        }
        (0..<8).forEach { _ in
            addBlack(pawn: Piece(with: Pawn.Color.black, representation: Pawn.Representation.black))
        }
        addBlack(piece: Piece.makeBlackRook())
        addBlack(piece: Piece.makeBlackKnight())
        addBlack(piece: Piece.makeBlackBishop())
        addBlack(piece: Piece.makeBlackQueen())
        addBlack(piece: Piece.makeBlackKing())
        addBlack(piece: Piece.makeBlackBishop())
        addBlack(piece: Piece.makeBlackKnight())
        addBlack(piece: Piece.makeBlackRook())
    }
    
    func whitePawnsResult() -> String {
        return makePiecesResult(with: whitePawns)
    }

    func whitePiecesResult() -> String {
        return makePiecesResult(with: whitePieces)
    }
    
    func blackPawnsResult() -> String {
        return makePiecesResult(with: blackPawns)
    }

    func blackPiecesResult() -> String {
        return makePiecesResult(with: blackPieces)
    }
    
    private func makePiecesResult(with pieces : Array<Piece>) -> String {
        var result = ""
        for piece in pieces {
            result += piece.representation
        }
        return result
    }
    
    private func makeBlackLine() -> String{
        return "________"
    }
    
    func makeBoardResult() -> String {
        var boardResult = Array<String>()
        boardResult.append(blackPiecesResult())
        boardResult.append(blackPawnsResult())
        boardResult.append(makeBlackLine())
        boardResult.append(makeBlackLine())
        boardResult.append(makeBlackLine())
        boardResult.append(makeBlackLine())
        boardResult.append(whitePawnsResult())
        boardResult.append(whitePiecesResult())
        return boardResult.joined(separator: "\n")
    }
}
