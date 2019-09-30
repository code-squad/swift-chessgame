//
//  Position.swift
//  ChessGame
//
//  Created by JK on 2019/09/29.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Position : Equatable, Hashable, CustomStringConvertible, CustomDebugStringConvertible {
    private(set) var x : Int
    private(set) var y : Int
    
    init(x: Int, y: Int) {
        self.x = x + 1
        self.y = y + 1
    }
    
    init?(with position: String) {
        guard position.count == 2 else { return nil }
        let x = Int(position.unicodeScalars.first!.value - "a".unicodeScalars.first!.value) + 1
        let y = Int(position.last!.unicodeScalars.first!.value - "0".unicodeScalars.first!.value)
        self.x = x
        self.y = y
    }
    
    var zerobased : Position {
        return Position(x: x-2, y: y-2)
    }
    
    func verticalNeighbors() -> Array<Position> {
        let current = zerobased
        return [Position(x: current.x, y: current.y-1),
                Position(x: current.x, y: current.y+1)]
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(x * 10 + y)
    }

    var description: String {
        return "Position (x=\(x), y=\(y))"
    }

    var debugDescription: String {
        return "Position (x=\(x), y=\(y)), zerobased(\(x-1), \(y-1))"
    }
}
