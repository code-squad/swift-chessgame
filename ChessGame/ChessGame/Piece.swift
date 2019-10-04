//
/******************************************************************************
 * File Name        : Piece.swift
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


struct Piece: CustomStringConvertible {
    
    enum Side {
        case white
        case black
    }
    
    enum `Type` {
        case pawn
        case knight
        case rook
        case bishop
        case queen
        case king
    }

    var description: String {
        switch self.side {
        case .white:
            switch self.type {
            case .pawn: return "♙"
            case .knight: return "♘"
            case .rook: return "♖"
            case .bishop: return "♗"
            case .queen: return "♕"
            case .king: return "♔"
            }
        case .black:
            switch self.type {
            case .pawn: return "♟"
                case .knight: return "♞"
                case .rook: return "♜"
                case .bishop: return "♝"
                case .queen: return "♛"
                case .king: return "♚"
            }
        }
    }
    
    

    let side: Side
    let type: Type
    
    init(_ type: Type, of side: Side = .white) {
        self.type = type
        self.side = side
    }
    
    func isBlack() -> Bool {
        return self.side == .black
    }
    
    func isWhite() -> Bool {
        return self.side == .white
    }
}

extension Piece: Equatable {
    static func == (lhs: Piece, rhs: Piece) -> Bool {
        return ((lhs.side == rhs.side) && (lhs.type == rhs.type))
    }
}
