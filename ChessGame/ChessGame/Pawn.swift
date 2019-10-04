//
/******************************************************************************
 * File Name        : Pawn.swift
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


struct Pawn {
    
    enum PieceColor: Int, CustomStringConvertible {
        case white = 1
        case black
        
        var description: String {
            switch self {
            case .white:
                return "♙"
            case .black:
                return "♟"
            }
        }
    }

    let color: PieceColor
    
    init(with color: PieceColor = .white) {
        self.color = color
    }

}

extension Pawn: Equatable {
    static func == (lhs: Pawn, rhs: Pawn) -> Bool {
        lhs.color == rhs.color
    }
}
