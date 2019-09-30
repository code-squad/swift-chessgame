//
//  Piece.swift
//  ChessGame
//
//  Created by JK on 2019/09/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

final class Piece : Equatable, Hashable {
    static func == (lhs: Piece, rhs: Piece) -> Bool {
        return (lhs.color == rhs.color
            && lhs.type == rhs.type
            && lhs.position == rhs.position)
    }
    
    enum Color : Equatable {
        case white
        case black
        case none
    }

    enum TypeCase : Double, Equatable {
        case pawn   = 1.0
        case rook   = 5.0
        case knight = 2.5
        case bishop = 3.0
        case queen  = 9.0
        case king   = 0.0
        case blank  = -0.0
        
        func whiteRepresentation() -> String {
            switch self {
            case .pawn: return "♙"
            case .rook: return "♖"
            case .knight: return "♘"
            case .bishop: return "♗"
            case .queen: return "♕"
            case .king: return "♔"
            default: return "_"
            }
        }
        
        func blackRepresentation() -> String {
            switch self {
            case .pawn: return "♟"
            case .rook: return "♜"
            case .knight: return "♞"
            case .bishop: return "♝"
            case .queen: return "♛"
            case .king: return "♚"
            default: return "_"
            }
        }
        
        func defaultPoint() -> Double {
            return self.rawValue
        }
    }
        
    let color : Color
    let type : TypeCase
    private(set) var position: Position
    
    init(with color: Color, type: TypeCase, position: Position) {
        self.color = color
        self.type = type
        self.position = position
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(color.hashValue * 1000 + type.hashValue * 100 + position.hashValue)
    }
    
    var representation : String {
        return isWhite() ? type.whiteRepresentation() : type.blackRepresentation()
    }
    
    func isWhite() -> Bool {
        return self.color == Color.white
    }
    
    func isBlack() -> Bool {
        return self.color == Color.black
    }
    
    func match(color: Color, type: TypeCase) -> Bool {
        return match(with: color) && match(with: type)
    }
    
    private func match(with color: Color) -> Bool {
        return self.color == color
    }

    private func match(with type: TypeCase) -> Bool {
        return self.type == type
    }
    
    func addPiece(by color: Color, to list: inout Array<Piece>) {
        if match(with: color) {
            list.append(self)
        }
    }
    
    func point(of pieces: Array<Piece>) -> Double {
        guard match(with: .pawn) else { return type.defaultPoint() }
        
        let neighbors = position.verticalNeighbors()
        for position in neighbors {
            if pieces.contains(Piece(with: self.color, type: self.type, position: position)) {
                return self.type.defaultPoint() - 0.5
            }
        }
        
        return type.defaultPoint()
    }

    //MARK:- FACTORY METHOD
    static func makeWhite(type: TypeCase, position: Position) -> Piece {
        return Piece(with: Color.white, type: type, position: position)
    }

    static func makeBlack(type: TypeCase, position: Position) -> Piece {
        return Piece(with: Color.black, type: type, position: position)
    }

    static func makeWhitePawn(position: Position) -> Piece {
        return makeWhite(type: .pawn, position: position)
    }

    static func makeBlackPawn(position: Position) -> Piece {
        return makeBlack(type: .pawn, position: position)
    }

    static func makeWhiteRook(position: Position) -> Piece {
        return makeWhite(type: .rook, position: position)
    }

    static func makeBlackRook(position: Position) -> Piece {
        return makeBlack(type: .rook, position: position)
    }

    static func makeWhiteKnight(position: Position) -> Piece {
        return makeWhite(type: .knight, position: position)
    }

    static func makeBlackKnight(position: Position) -> Piece {
        return makeBlack(type: .knight, position: position)
    }

    static func makeWhiteBishop(position: Position) -> Piece {
        return makeWhite(type: .bishop, position: position)
    }

    static func makeBlackBishop(position: Position) -> Piece {
        return makeBlack(type: .bishop, position: position)
    }

    static func makeWhiteQueen(position: Position) -> Piece {
        return makeWhite(type: .queen, position: position)
    }

    static func makeBlackQueen(position: Position) -> Piece {
        return makeBlack(type: .queen, position: position)
    }

    static func makeWhiteKing(position: Position) -> Piece {
        return makeWhite(type: .king, position: position)
    }

    static func makeBlackKing(position: Position) -> Piece {
        return makeBlack(type: .king, position: position)
    }
    
    static func makeBlank(position: Position) -> Piece {
        return Piece(with: .none, type: .blank, position: position)
    }
}
