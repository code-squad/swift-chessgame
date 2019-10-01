//
//  Piece.swift
//  ChessGame
//
//  Created by JK on 2019/09/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Piece : Equatable, Hashable {
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
    private(set) var directions: Array<Direction.Compass>
    
    init(with color: Color, type: TypeCase, position: Position, directions: Array<Direction.Compass> = [Direction.Compass]()) {
        self.color = color
        self.type = type
        self.position = position
        self.directions = directions
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
    
    func degree(to target: Piece) -> Position.Degree {
        return self.position.degree(to: target.position)
    }
    
    func direction(to target: Piece) -> Direction.Compass? {
        return self.position.direction(to: target.position)
    }
    
    func isSameTeam(with target: Piece) -> Bool {
        guard !(isWhite() && target.isWhite()) else { return true }
        guard !(isBlack() && target.isBlack()) else { return true }
        return false
    }
    
    func verifyMove(to target: Piece) throws -> Direction.Compass {
        guard !isSameTeam(with: target) else {
            throw Direction.InternalError.invalidMovePosition
        }
        
        let direction = position.direction(to: target.position)
        if direction == nil || !directions.contains(direction!) {
            throw Direction.InternalError.invalidMovePosition
        }
        
        return direction!
    }
    
    func move(to target: Piece) {
        do {
            _ = try verifyMove(to: target)
        }
        catch {
            print()
            return
        }
        self.position = target.position
    }
}
