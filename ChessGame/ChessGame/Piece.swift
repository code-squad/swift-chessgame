//
//  Piece.swift
//  ChessGame
//
//  Created by JK on 2019/09/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

final class Piece : Equatable {
    static func == (lhs: Piece, rhs: Piece) -> Bool {
        return (lhs.color == rhs.color
            && lhs.representation == rhs.representation)
    }
    
    struct Color {
        static let white = "WHITE"
        static let black = "BLACK"
    }
    
    struct Representation {
        struct Pawn {
            static let white = "♙"
            static let black = "♟"
        }
        struct Rook {
            static let white = "♖"
            static let black = "♜"
        }
        struct Knight {
            static let white = "♘"
            static let black = "♞"
        }
        struct Bishop {
            static let white = "♗"
            static let black = "♝"
        }
        struct Queen {
            static let white = "♕"
            static let black = "♛"
        }
        struct King {
            static let white = "♔"
            static let black = "♚"
        }
    }
    
    let color : String
    let representation : String
    
    init(with color: String, representation: String) {
        self.color = color
        self.representation = representation
    }
    
    func isWhite() -> Bool {
        return self.color == Color.white
    }
    
    func isBlack() -> Bool {
        return self.color == Color.black
    }

    //MARK:- FACTORY METHOD
    static func makeWhitePawn() -> Piece {
        return Piece(with: Color.white, representation: Representation.Pawn.white)
    }

    static func makeBlackPawn() -> Piece {
        return Piece(with: Color.black, representation: Representation.Pawn.black)
    }

    static func makeWhiteRook() -> Piece {
        return Piece(with: Color.white, representation: Representation.Rook.white)
    }

    static func makeBlackRook() -> Piece {
        return Piece(with: Color.black, representation: Representation.Rook.black)
    }

    static func makeWhiteKnight() -> Piece {
        return Piece(with: Color.white, representation: Representation.Knight.white)
    }

    static func makeBlackKnight() -> Piece {
        return Piece(with: Color.black, representation: Representation.Knight.black)
    }

    static func makeWhiteBishop() -> Piece {
        return Piece(with: Color.white, representation: Representation.Bishop.white)
    }

    static func makeBlackBishop() -> Piece {
        return Piece(with: Color.black, representation: Representation.Bishop.black)
    }

    static func makeWhiteQueen() -> Piece {
        return Piece(with: Color.white, representation: Representation.Queen.white)
    }

    static func makeBlackQueen() -> Piece {
        return Piece(with: Color.black, representation: Representation.Queen.black)
    }

    static func makeWhiteKing() -> Piece {
        return Piece(with: Color.white, representation: Representation.King.white)
    }

    static func makeBlackKing() -> Piece {
        return Piece(with: Color.black, representation: Representation.King.black)
    }
}
