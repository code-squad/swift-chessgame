//
//  BoardTest.swift
//  ChessTest
//
//  Created by JK on 2019/09/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import XCTest

class BoardTest: XCTestCase {
    var board : Board!
    
    override func setUp() {
        board = Board()
    }

    override func tearDown() {
    }

    func test보드_생성_성공() {
        let whitePawn = Pawn.init(with: Pawn.Color.white, representation: Pawn.Representation.white)
        board.addWhite(pawn: whitePawn)
        XCTAssertEqual(board.count, 1)
        XCTAssertEqual(board.whitePawn(at: 0), whitePawn)

        let blackPawn = Pawn.init(with: Pawn.Color.black, representation: Pawn.Representation.black)
        board.addBlack(pawn: blackPawn)
        XCTAssertEqual(board.count, 1)
        XCTAssertEqual(board.blackPawn(at: 0), blackPawn)
    }
    
    func test보드_초기화_성공() {
        board.initialize()
        XCTAssertEqual(board.whitePawnsResult(), "♙♙♙♙♙♙♙♙")
        XCTAssertEqual(board.blackPawnsResult(), "♟♟♟♟♟♟♟♟")
    }
}
