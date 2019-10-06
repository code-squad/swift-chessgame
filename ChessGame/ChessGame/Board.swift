//
//  Board.swift
//  ChessGame
//
//  Created by junwoo on 2019/10/06.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Board {
    var whitePawns: [Pawn]
    var blackPawns: [Pawn]
    
    init() {
        self.whitePawns = []
        self.blackPawns = []
    }
    
    func initialize() {
        whitePawns.removeAll()
        blackPawns.removeAll()
        for _ in 1...8 {
            let white = Pawn(color: .white, representation: Pawn.Color.white.rawValue)
            let black = Pawn(color: .black, representation: Pawn.Color.black.rawValue)
            whitePawns.append(white)
            blackPawns.append(black)
        }
    }
    
    var count: Int {
        return whitePawns.count + blackPawns.count
    }
    
    func add(pawn: Pawn) {
        if pawn.color == .white {
            self.whitePawns.append(pawn)
        } else {
            self.blackPawns.append(pawn)
        }
    }
    
    func blackPawn(index at: Int) -> Pawn {
        return self.blackPawns[at]
    }
    
    func whitePawn(index at: Int) -> Pawn {
        return self.whitePawns[at]
    }
    
    func print() -> String {
        return "white : \(whitePawns.count), black : \(blackPawns.count)"
    }
    
    func whitePawnsResult() -> String {
        printPawns(pawns: whitePawns)
    }
    
    func blackPawnsResult() -> String {
        printPawns(pawns: blackPawns)
    }
    
    func printPawns(pawns: [Pawn]) -> String {
        var result = ""
        for pawn in pawns {
            result += pawn.representation
        }
        return result
    }
    
    func blanksResult() -> String {
        var result = ""
        for _ in 1...8 {
            result += "-"
        }
        return result
    }
    
    func printResult() -> String {
        var resultArr: [String] = []
        resultArr.append(blanksResult())
        resultArr.append(blackPawnsResult())
        resultArr.append(blanksResult())
        resultArr.append(blanksResult())
        resultArr.append(blanksResult())
        resultArr.append(blanksResult())
        resultArr.append(whitePawnsResult())
        resultArr.append(blanksResult())
        return resultArr.joined(separator: "\n")
    }
}
