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
    
    func verifyPawn(color: String) -> Bool {
        let pawn = Pawn(with: color)
        return pawn.color == color
    }

    func test화이트_인스턴스_생성하기() {
        XCTAssertTrue(verifyPawn(color: "white"))
    }

    func test블랙_인스턴스_생성하기() {
        XCTAssertTrue(verifyPawn(color: "black"))
    }

    /*
    func test화이트_인스턴스_생성하기() {
        let pawn = Pawn(with: "white")
        XCTAssertEqual(pawn.color, "white")
    }

    func test블랙_인스턴스_생성하기() {
        let pawn = Pawn(with: "black")
        XCTAssertEqual(pawn.color, "black")
    }
    */
}
