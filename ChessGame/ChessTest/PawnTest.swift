//
//  PawnTest.swift
//  PawnTest
//
//  Created by JK on 2019/09/26.
//  Copyright © 2019 codesquad. All rights reserved.
//

import XCTest

class PawnTest: XCTestCase {

    override func setUp() {
    }

    override func tearDown() {
    }

    func test기본생성자() {
        let pawn = Pawn()
        XCTAssertEqual(pawn.color, Pawn.Color.white)
    }
    
    func verifyPawn(color: String) -> Bool {
        let pawn = Pawn(with: color)
        return pawn.color == color
    }

    func test화이트_인스턴스_생성하기() {
        XCTAssertTrue(verifyPawn(color: Pawn.Color.white))
    }

    func test블랙_인스턴스_생성하기() {
        XCTAssertTrue(verifyPawn(color: Pawn.Color.black))
    }
}
