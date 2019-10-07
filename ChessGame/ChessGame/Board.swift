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
    var whitePiece : [Piece]
    var blackPiece : [Piece]
    var whitePawn : [Piece]
    var blackPawn : [Piece]
    
    init() {
        self.whitePiece = []
        self.blackPiece = []
        
        self.whitePawn = []
        self.blackPawn = []
    }
    
    func initialize() {
        addPiece(piece: Piece(color: .black, representation: .rook))
        addPiece(piece: Piece(color: .white, representation: .rook))
        
        addPiece(piece: Piece(color: .black, representation: .knight))
        addPiece(piece: Piece(color: .white, representation: .knight))
        
        addPiece(piece: Piece(color: .black, representation: .bishop))
        addPiece(piece: Piece(color: .white, representation: .bishop))
        
        addPiece(piece: Piece(color: .black, representation: .queen))
        addPiece(piece: Piece(color: .white, representation: .queen))
        
        addPiece(piece: Piece(color: .black, representation: .king))
        addPiece(piece: Piece(color: .white, representation: .king))
        
        addPiece(piece: Piece(color: .black, representation: .bishop))
        addPiece(piece: Piece(color: .white, representation: .bishop))
        
        addPiece(piece: Piece(color: .black, representation: .knight))
        addPiece(piece: Piece(color: .white, representation: .knight))
        
        addPiece(piece: Piece(color: .black, representation: .rook))
        addPiece(piece: Piece(color: .white, representation: .rook))
        
        for _ in 1...8 {
            addPawn(piece: Piece(color: Piece.Color.black, representation: Piece.Representation.pawn))
            addPawn(piece: Piece(color: Piece.Color.white, representation: Piece.Representation.pawn))
        }
    }
    
    func addPiece(piece: Piece) {
        if piece.color == Piece.Color.black {
            blackPiece.append(piece)
        }
        else {
            whitePiece.append(piece)
        }
    }
    
    func addPawn(piece: Piece) {
        if piece.color == Piece.Color.black {
            blackPawn.append(piece)
        }
        else {
            whitePawn.append(piece)
        }
    }
    
    func pawnCount() -> Int {
        return blackPawn.count + whitePawn.count
    }
    
    func blackPieceCount() -> Int {
        return blackPiece.count
    }
    
    func whitePieceCount() -> Int {
        return whitePiece.count
    }
    
    func blackPieceResult() -> String {
        return pieceResult(pieces: self.blackPiece, color: .black)
    }
    
    func whitePieceResult() -> String {
        return pieceResult(pieces: self.whitePiece, color: .white)
    }
    
    func blackPawnResult() -> String {
        return pieceResult(pieces: self.blackPawn, color: .black)
    }
    
    func whitePawnResult() -> String {
        return pieceResult(pieces: self.whitePawn, color: .white)
    }
    
    func emptyPosResult() -> String {
        return "--------\n"
    }
    
    private func pieceResult(pieces: [Piece], color: Piece.Color) -> String {
        var result : String = ""
        
        if color == .black {
            for piece in pieces {
                result.append(piece.representation.black)
            }
        }
        else {
            for piece in pieces {
                result.append(piece.representation.white)
            }
        }
        result.append("\n")
        
        return result
        
    }

    func print() -> String {
        let boardResult : String =
        """
        \(blackPieceResult())
        \(blackPawnResult())
        \(emptyPosResult())
        \(emptyPosResult())
        \(emptyPosResult())
        \(emptyPosResult())
        \(whitePawnResult())
        \(whitePieceResult())
        """
        
        return boardResult
    }
}
