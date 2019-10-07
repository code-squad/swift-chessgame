//
//  Pawn.swift
//  ChessGame
//
//  Created by temphee.Reid on 03/10/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

typealias PawnColor = Piece.Color

class Piece {
    
    enum Color {
        case white
        case black
        
        var representation : String {
            switch self {
            case Color.white :
                return "♙"
            case Color.black :
                return "♟"
            }
        }
    }
    
    enum Representation {
        case pawn
        case rook
        case knight
        case bishop
        case queen
        case king
        
        var white : String {
            switch self {
            case .pawn: return "♙"
            case .king: return "♔"
            case .queen: return "♕"
            case .bishop: return "♗"
            case .knight: return "♘"
            case .rook: return "♖"
            }
        }
            
        var black : String {
            switch self {
            case .pawn: return "♟"
            case .king: return "♚"
            case .queen: return "♛"
            case .bishop: return "♝"
            case .knight: return "♞"
            case .rook: return "♜"
            }
        }
    }
    
    let color : Piece.Color
    let representation : Piece.Representation
    
    
    init(color: Color, representation: Representation) {
        self.color = color
        self.representation = representation
    }
    
    func isBlack() -> Bool {
        return self.color == .black
    }
    
    func isWhite() -> Bool {
        return self.color == .white
    }
}

extension Piece {
    static func makePiece(color: Piece.Color, representation: Piece.Representation) -> Piece {
        return Piece(color: color, representation: representation)
    }
}
