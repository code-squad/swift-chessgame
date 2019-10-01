//
//  Direction.swift
//  ChessGame
//
//  Created by JK on 2019/09/30.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Direction : Equatable {
    enum InternalError : Error {
        case invalidMovePosition
        case sameCurrentPosition
        
        var localizedDescription: String {
            switch self {
            case .invalidMovePosition:
                return "옮길 수 없는 위치입니다"
            case .sameCurrentPosition:
                return "같은 위치는 불가능합니다"
            }
        }
    }
    
    enum Compass : CaseIterable {
        case North
        case NorthEast
        case East
        case SouthEast
        case South
        case SouthWest
        case West
        case NorthWest
        /*
         +-----+-----+-----+
         |NW   |N    |NE   |
         |-1,-1|0,-1 |1,-1 |
         +-----+-----+-----+
         |W    |     |E   |
         |-1,0 |0,0  |1,0  |
         +-----+-----+-----+
         |SW   |S    |SE   |
         |-1,1 |0,1  |1,1  |
         +-----+-----+-----+
         */

        case NNE
        case NNW
        case SSE
        case SSW
        case EEN
        case EES
        case WWN
        case WWS
                
        var point : (x:Int, y:Int) {
            switch self {
            case .North:        return (0, 1)
            case .NorthEast:    return (1, 1)
            case .East:         return (1, 0)
            case .SouthEast:    return (1, -1)
            case .South:        return (0, 1)
            case .SouthWest:    return (-1, -1)
            case .West:         return (-1, 0)
            case .NorthWest:    return (-1, 1)
            case .NNE:          return (1, 2)
            case .NNW:          return (-1, 2)
            case .SSE:          return (1, -2)
            case .SSW:          return (-1, -2)
            case .EEN:          return (2, 1)
            case .EES:          return (2, -1)
            case .WWN:          return (-2, 1)
            case .WWS:          return (-2, -1)
            }
        }
    }
    
    let x : Int
    let y : Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    func isOverOneX() -> Bool {
        return x > 1
    }
    
    func isOverOneY() -> Bool {
        return y > 1
    }
    
    var compass : Compass? {
        return try? Self.match(x: x, y: y)
    }
    
    static func match(x : Int, y: Int) throws -> Direction.Compass {
        guard x != 0 && y != 0 else { throw InternalError.sameCurrentPosition }
        
        let directions = Compass.AllCases()
        for direction in directions {
            if (direction.point.x == x &&  direction.point.y == y) {
                return direction
            }
        }
        
        if x == 0 {
            return Self.compassSouthOrNorth(y: y)
        }
        
        if y == 0 {
            return Self.compassEastOrWest(x: x)
        }
        
        let remainder = x % y
        if remainder != 0 {
            throw InternalError.invalidMovePosition
        }
        
        let quotient = x / y
        if quotient == 1 {
            return Self.compassNorthEastOrSouthWest(x: x)
        }
        else if quotient == -1 {
            return Self.compassNorthWestOrSouthEast(x: x)
        }
        
        throw InternalError.invalidMovePosition
    }
    
    static func compassNorthWestOrSouthEast(x : Int) -> Compass {
        if x > 0 {
            return .SouthEast
        }
        return .NorthWest
    }

    static func compassNorthEastOrSouthWest(x : Int) -> Compass {
        if x > 0 {
            return .NorthEast
        }
        return .SouthWest
    }
    
    static func compassEastOrWest(x : Int) -> Compass {
        if x > 0 {
            return .East
        }
        return .West
    }

    static func compassSouthOrNorth(y : Int) -> Compass {
        if y > 0 {
            return .North
        }
        return .South
    }

    static func compassLinear() -> [Compass] {
        return [.North, .East, .South, .West]
    }

    static func compassDiagonal() -> [Compass] {
        return [.NorthEast, .SouthEast, .SouthWest, .NorthWest]
    }
    
    static func compassEveryone() -> [Compass] {
        return [.North, .East, .South, .West, .NorthEast, .SouthEast, .NorthWest, .SouthWest]
    }
    
    static func compassForKnight() -> [Compass] {
        return [.NNE, .NNW, .SSE, .SSW, .EEN, .EES, .WWN, .WWS]
    }
    
    static func compassForWhitePawn() -> [Compass] {
        return [.North, .NorthEast, .NorthWest]
    }
    
    static func compassForBlackPawn() -> [Compass] {
        return [.South, .SouthEast, .SouthWest]
    }
}
