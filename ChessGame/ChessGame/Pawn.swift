//
//  Pawn.swift
//  ChessGame
//
//  Created by junwoo on 2019/10/06.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Pawn {
    
    enum Color {
        case white
        case black
    }
    
    let color: Color
    init(color: Color) {
        self.color = color
    }
    
    convenience init () {
        self.init(color: .white)
    }
}

extension Pawn: Equatable {
    static func == (lhs: Pawn, rhs: Pawn) -> Bool {
        return lhs.color == rhs.color
    }
}
