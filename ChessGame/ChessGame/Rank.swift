//
//  Rank.swift
//  ChessGame
//
//  Created by JK on 2019/09/28.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Rank {
    private(set) var pieces : Array<Piece>!
    
    init() {
        pieces = [Piece]()
    }
    
    func add(piece : Piece) {
        pieces.append(piece)
    }
    
    func count(color: Piece.Color, type: Piece.TypeCase) -> Int {
        return pieces.filter{ $0.match(color: color, type: type) }.count
    }
    
    func find(at index: Int) -> Piece {
        return pieces[index]
    }
    
    func move(to index: Int, piece: Piece) {
        pieces[index] = piece
    }
    
    func findPieces(by color: Piece.Color) -> Array<Piece> {
        var result = [Piece]()
        for piece in pieces {
            piece.addPiece(by: color, to: &result)
        }
        return result
    }
    
    //MARK:- FACTORY METHOD
    
    static func makeWhitePieces(index: Int) -> Rank {
        let rank = Rank()
        rank.add(piece: Piece.makeWhiteRook(position: Position(x: 0, y: index)))
        rank.add(piece: Piece.makeWhiteKnight(position: Position(x: 1, y: index)))
        rank.add(piece: Piece.makeWhiteBishop(position: Position(x: 2, y: index)))
        rank.add(piece: Piece.makeWhiteQueen(position: Position(x: 3, y: index)))
        rank.add(piece: Piece.makeWhiteKing(position: Position(x: 4, y: index)))
        rank.add(piece: Piece.makeWhiteBishop(position: Position(x: 5, y: index)))
        rank.add(piece: Piece.makeWhiteKnight(position: Position(x: 6, y: index)))
        rank.add(piece: Piece.makeWhiteRook(position: Position(x: 7, y: index)))
        return rank
    }
    
    static func makeBlackPieces(index: Int) -> Rank {
        let rank = Rank()
        rank.add(piece: Piece.makeBlackRook(position: Position(x: 0, y: index)))
        rank.add(piece: Piece.makeBlackKnight(position: Position(x: 1, y: index)))
        rank.add(piece: Piece.makeBlackBishop(position: Position(x: 2, y: index)))
        rank.add(piece: Piece.makeBlackQueen(position: Position(x: 3, y: index)))
        rank.add(piece: Piece.makeBlackKing(position: Position(x: 4, y: index)))
        rank.add(piece: Piece.makeBlackBishop(position: Position(x: 5, y: index)))
        rank.add(piece: Piece.makeBlackKnight(position: Position(x: 6, y: index)))
        rank.add(piece: Piece.makeBlackRook(position: Position(x: 7, y: index)))
        return rank
    }

    static func makeWhitePawns(yIndex: Int) -> Rank {
        let rank = Rank()
        for xIndex in 0..<8 {
            rank.add(piece: Piece.makeWhitePawn(position: Position(x: xIndex, y: yIndex)))
        }
        return rank
    }
    
    static func makeBlackPawns(yIndex: Int) -> Rank {
        let rank = Rank()
        for xIndex in 0..<8 {
            rank.add(piece: Piece.makeBlackPawn(position: Position(x: xIndex, y: yIndex)))
        }
        return rank
    }
    
    static func makeBlackLine(yIndex: Int) -> Rank {
        let rank = Rank()
        for xIndex in 0..<8 {
            rank.add(piece: Piece.makeBlank(position: Position(x: xIndex, y: yIndex)))
        }
        return rank
    }
}
