//
//  PawnTests.swift
//  ChessGameTests
//
//  Created by sungchan.you on 2019/10/03.
//  Copyright © 2019 codesquad. All rights reserved.
//

import XCTest

class PawnTests: XCTestCase {
    
    func test기본생성자() {
        let pawn = Pawn()
        XCTAssertEqual(pawn.color, Pawn.Color.white)
    }
    
    func test인스턴스_생성하기() {
        XCTAssertTrue(verifyPawn(color: .white))
        XCTAssertTrue(verifyPawn(color: .black))
    }
    
    func verifyPawn(color: Pawn.Color) -> Bool {
        let pawn = Pawn(color: color)
        return pawn.color == color
    }
}
