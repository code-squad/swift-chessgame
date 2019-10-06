//
//  Pawn.swift
//  ChessGame
//
//  Created by junwoo on 2019/10/06.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Pawn {
    
    enum Color: String {
        case white = "\u{2659}"
        case black = "\u{265F}"
    }
    
    let representation: String
    let color: Color
    init(color: Color, representation: String) {
        self.color = color
        self.representation = representation
    }
    
    convenience init () {
        self.init(color: .white, representation: Color.white.rawValue)
    }
}

extension Pawn: Equatable {
    static func == (lhs: Pawn, rhs: Pawn) -> Bool {
        return lhs.color == rhs.color
    }
}
