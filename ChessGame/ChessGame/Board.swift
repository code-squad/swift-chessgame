//
//  Board.swift
//  ChessGame
//
//  Created by sungchan.you on 2019/10/03.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Board {
    
    private(set) var whitePawns: [Pawn] = []
    private(set) var blackPawns: [Pawn] = []
    
    var count: Int {
        return whitePawns.count + blackPawns.count
    }
    
    func makeLines(number: Int) -> String {
        return Array(0..<number).map { _ in
            "________"
        }.joined(separator: "\n")
    }
    
    func add(pawn: Pawn) {
        switch pawn.color {
        case .white : whitePawns.append(pawn)
        case .black : blackPawns.append(pawn)
        }
    }
    
    
    func initialize() {
        Array(0..<8).forEach { _ in
            add(pawn: Pawn(color: .white))
            add(pawn: Pawn(color: .black))
        }
    }
    
    func showGame() {
        print(makeLines(number: 1))
        print(blackPawnsResult())
        print(makeLines(number: 4))
        print(whitePawnsResult())
        print(makeLines(number: 1))
    }
    
    func result(of pawns: [Pawn]) -> String {
        return pawns.reduce("") { $0 + "\($1)" }
    }
    
    func blackPawnsResult () -> String {
        return result(of: blackPawns)
    }
    
    func whitePawnsResult () -> String {
        return result(of: whitePawns)
    }
    
    func blackPawn(at index: Int) -> Pawn {
        return blackPawns[index]
    }
    
    func whitePawn(at index: Int) -> Pawn {
        return whitePawns[index]
    }
}
