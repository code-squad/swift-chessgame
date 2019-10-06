//
//  Board.swift
//  ChessGame
//
//  Created by junwoo on 2019/10/06.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Board {
    var pawns: [Pawn]
    
    init() {
        self.pawns = []
    }
    
    var count: Int {
        return pawns.count
    }
    
    func add(pawn: Pawn) {
        self.pawns.append(pawn)
    }
    
    subscript(index: Int) -> Pawn {
        get {
            return self.pawns[index]
        }
    }
}
