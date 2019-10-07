//
//  Pawn.swift
//  ChessGame
//
//  Created by temphee.Reid on 03/10/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

typealias PawnColor = Pawn.Color

class Pawn {
    
    enum Color {
        case white
        case black
        
        var representation : String {
            switch self {
            case Color.white :
                return "♙"
            case Color.black :
                return "♟"
            }
        }
    }
    
    let color : Color
    let representation : String
    
    init(color: Color) {
        self.color = color
        self.representation = self.color.representation
        
        
    }
    
    convenience init() {
        self.init(color: .white)
    }
    
}
