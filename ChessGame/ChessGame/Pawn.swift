//
//  Pawn.swift
//  ChessGame
//
//  Created by temphee.Reid on 08/10/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Pawn {
    let color : Piece.Color
    let representation : Piece.Representation
    
    init(color: Piece.Color, representation: Piece.Representation) {
        self.color = color
        self.representation = representation
    }
    
}
