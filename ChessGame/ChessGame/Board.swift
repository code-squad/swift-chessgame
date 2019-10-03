//
//  Board.swift
//  ChessGame
//
//  Created by sungchan.you on 2019/10/03.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Board {
    private(set) var pawns: [Pawn] = []
    
    var count: Int {
        return pawns.count
    }
    
    func add(pawn: Pawn) {
        pawns.append(pawn)
    }
    
    subscript(index: Int) -> Pawn {
        get {
            return pawns[index]
        }
        set(newValue) {
            pawns[index] = newValue
        }
    }
}
