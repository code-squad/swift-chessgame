//
//  PawnTest.swift
//  ChessGameTests
//
//  Created by junwoo on 2019/10/06.
//  Copyright © 2019 codesquad. All rights reserved.
//

import XCTest

class PawnTest: XCTestCase {

    func test화이트_인스턴스_생성하기() {
        XCTAssertTrue(verifyPawn(color: .white, representation: Pawn.Color.white.rawValue))
    }
    
    func test블랙_인스턴스_생성하기() {
        XCTAssertTrue(verifyPawn(color: .black, representation: Pawn.Color.black.rawValue))
    }
    
    private func verifyPawn(color: Pawn.Color, representation: String) -> Bool {
        let pawn = Pawn(color: color, representation: representation)
        return pawn.color == color
    }
    
    func test기본생성자() {
        let pawn = Pawn()
        XCTAssertEqual(pawn.color, .white)
    }

}
