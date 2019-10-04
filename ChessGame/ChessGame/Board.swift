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
    private var whitePieces: [Piece]
    private var whitePawns: [Piece]
    private var blackPieces: [Piece]
    private var blackPawns: [Piece]
    
    init() {
        self.whitePieces = [Piece]()
        self.whitePawns = [Piece]()
        self.blackPieces = [Piece]()
        self.blackPawns = [Piece]()
    }
    
    func add(piece: Piece, to side:Piece.Side) {
        switch side {
        case .white:
            if piece.type == .pawn {
                whitePawns.append(piece)
            } else {
                whitePieces.append(piece)
            }
        case .black:
            if piece.type == .pawn {
                blackPawns.append(piece)
            } else {
                blackPieces.append(piece)
            }
        }
    }
    
    func initialize() {
        add(piece: Piece(.rook, of: .white), to: .white)
        add(piece: Piece(.knight, of: .white), to: .white)
        add(piece: Piece(.bishop, of: .white), to: .white)
        add(piece: Piece(.queen, of: .white), to: .white)
        add(piece: Piece(.king, of: .white), to: .white)
        add(piece: Piece(.bishop, of: .white), to: .white)
        add(piece: Piece(.knight, of: .white), to: .white)
        add(piece: Piece(.rook, of: .white), to: .white)
        for _ in 1...8 {
            add(piece: Piece(.pawn, of: .white), to: .white)
            add(piece: Piece(.pawn, of: .black), to: .black)
        }
        add(piece: Piece(.rook, of: .black), to: .black)
        add(piece: Piece(.knight, of: .black), to: .black)
        add(piece: Piece(.bishop, of: .black), to: .black)
        add(piece: Piece(.queen, of: .black), to: .black)
        add(piece: Piece(.king, of: .black), to: .black)
        add(piece: Piece(.bishop, of: .black), to: .black)
        add(piece: Piece(.knight, of: .black), to: .black)
        add(piece: Piece(.rook, of: .black), to: .black)
        
    }
    
    func makeResult(with pieces: [Piece]) -> String {
        var result = ""
        for piece in pieces {
            result += piece.description
        }
        return result
    }
    
    func whitePiecesResult() -> String {
        return makeResult(with: whitePieces)
    }
    func whitePawnsResult() -> String {
        return makeResult(with: whitePawns)
    }
    
    func blackPawnsResult() -> String {
        return makeResult(with: blackPawns)
    }
    func blackPiecesResult() -> String {
        return makeResult(with: blackPieces)
    }
    
    func printBoard() {
        print(blackPiecesResult())
        print(blackPawnsResult())
        print("--------")
        print("--------")
        print("--------")
        print("--------")
        print(whitePawnsResult())
        print(whitePiecesResult())
    }
}
