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
    
    struct Representation {
        static let white = "♙"
        static let black = "♟"
    }
    
    let color : String
    let representation : String
    
    init(with color: String, representation: String) {
        self.color = color
        self.representation = representation
    }
    
    convenience init() {
        self.init(with: Color.white, representation: Representation.white)
    }
}
