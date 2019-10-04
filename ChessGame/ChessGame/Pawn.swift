//
//  Pawn.swift
//  ChessGame
//
//  Created by RENO1 on 02/10/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Pawn: Piece {
    internal var team:Team
    
    init(team:Team) {
        self.team = team
    }
    
}

protocol Piece {
    var team:Team { get }
}

enum Team {
    case WHITE
    case BLACK
}
