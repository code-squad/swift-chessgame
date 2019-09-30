//
//  Board.swift
//  ChessGame
//
//  Created by JK on 2019/09/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Board {
    private var ranks : Array<Rank>

    init() {
        ranks = [Rank]()
    }
    
    func count(color: Piece.Color, type: Piece.TypeCase) -> Int {
        var result = 0
        ranks.forEach{ rank in
            result += rank.count(color: color, type: type)
        }
        return result
    }
    
    func initialize() {
        ranks.append(Rank.makeWhitePieces(index: 0))
        ranks.append(Rank.makeWhitePawns(yIndex: 1))
        ranks.append(Rank.makeBlackLine(yIndex: 2))
        ranks.append(Rank.makeBlackLine(yIndex: 3))
        ranks.append(Rank.makeBlackLine(yIndex: 4))
        ranks.append(Rank.makeBlackLine(yIndex: 5))
        ranks.append(Rank.makeBlackPawns(yIndex: 6))
        ranks.append(Rank.makeBlackPieces(index: 7))
    }
    
    func initializeEmpty() {
        for index in 0..<8 {
            ranks.append(Rank.makeBlackLine(yIndex: index))
        }
    }

    private func show(with rank : Rank) -> String {
        var result = Array<String>()
        for piece in rank.pieces {
            result.append(piece.representation)
        }
        return result.joined()
    }
    
    func showBoard() -> String {
        var result = Array<String>()
        for rank in ranks {
            result.append(show(with: rank))
        }
        return result.joined(separator: "\n")
    }
    
    func findPiece(at word: String) -> Piece? {
        let maybe = Position(with: word)
        guard let position = maybe else { return nil }
        return ranks[position.zerobased.y].find(at: position.zerobased.x)
    }
    
    func move(_ piece: Piece, to position: Position) {
        ranks[position.zerobased.y].move(to: position.zerobased.x, piece: piece)
    }
    
    func move(_ piece: Piece, to position: String) {
        move(piece, to: Position(with: position) ?? Position(x: 0, y: 0))
    }
    
    private func findPieces(by color: Piece.Color) -> Array<Piece> {
        var pieces = Array<Piece>()
        for rank in ranks {
            pieces.append(contentsOf: rank.findPieces(by: color))
        }
        return pieces
    }
    
    func point(of color: Piece.Color) -> Double {
        let pieces = findPieces(by: color)
        var point = 0.0
        for piece in pieces {
            point += piece.point(of: pieces)
        }
        return point
    }
}
