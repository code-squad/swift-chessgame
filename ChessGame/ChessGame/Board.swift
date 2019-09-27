//
//  Board.swift
//  ChessGame
//
//  Created by JK on 2019/09/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Board {
    private var pawns : [Pawn]
    
    init() {
        pawns = [Pawn]()
    }
    
    var count : Int {
        return pawns.count
    }
    
    subscript(index : Int) -> Pawn {
        get {
            return pawns[index]
        }
    }
    
    func add(pawn : Pawn) {
        pawns.append(pawn)
    }
}
