//
//  PawnTest.swift
//  ChessGameTests
//
//  Created by junwoo on 2019/10/06.
//  Copyright © 2019 codesquad. All rights reserved.
//

import XCTest

class PawnTest: XCTestCase {

    func test인스턴스_생성하기() {
        XCTAssertTrue(verifyPawn(color: .black))
        XCTAssertTrue(verifyPawn(color: .white))
    }
    
    private func verifyPawn(color: Pawn.Color) -> Bool {
        let pawn = Pawn(color: color)
        return pawn.color == color
    }
    
    func test기본생성자() {
        let pawn = Pawn()
        XCTAssertEqual(pawn.color, .white)
    }

}
