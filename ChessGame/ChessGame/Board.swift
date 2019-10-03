//
/******************************************************************************
 * File Name        : Board.swift
 * Description      : ChessGame
 *******************************************************************************
 * Copyright (c) 2002-2019 KineMaster Corp. All rights reserved.
 * https://www.kinemastercorp.com/
 *
 * THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR
 * PURPOSE.
 ******************************************************************************/

import Foundation

class Board {
    private var pawns: [Pawn]
    
    init() {
        self.pawns = [Pawn]()
    }
    
    func add(pawn: Pawn) {
        self.pawns.append(pawn)
    }
    
    var count: Int {
        return self.pawns.count
    }
    
    subscript(index : Int) -> Pawn {
        get {
            return self.pawns[index]
        }
    }
}
