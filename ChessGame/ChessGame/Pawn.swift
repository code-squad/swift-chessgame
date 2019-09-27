//
//  Pawn.swift
//  ChessGame
//
//  Created by JK on 2019/09/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Pawn : Equatable{
    static func == (lhs: Pawn, rhs: Pawn) -> Bool {
        lhs.color == rhs.color
    }
    
    struct Color {
        static let white = "WHITE"
        static let black = "BLACK"
    }
    
    let color : String
    
    init(with color: String) {
        self.color = color
    }
    
    convenience init() {
        self.init(with: Color.white)
    }
}
