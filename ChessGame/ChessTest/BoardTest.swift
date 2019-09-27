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
        let whitePawn = Piece.init(with: Piece.Color.white, representation: Piece.Representation.Pawn.white)
        board.addWhite(pawn: whitePawn)
        XCTAssertEqual(board.count, 1)
        XCTAssertEqual(board.whitePawn(at: 0), whitePawn)

        let blackPawn = Piece.init(with: Piece.Color.black, representation: Piece.Representation.Pawn.black)
        board.addBlack(pawn: blackPawn)
        XCTAssertEqual(board.count, 2)
        XCTAssertEqual(board.blackPawn(at: 0), blackPawn)
    }
    
    func test보드_초기화_성공() {
        board.initialize()
        XCTAssertEqual(board.count, 32)
        XCTAssertEqual(board.whitePawnsResult(), "♙♙♙♙♙♙♙♙")
        XCTAssertEqual(board.blackPawnsResult(), "♟♟♟♟♟♟♟♟")
        let boardDummy = """
♜♞♝♛♚♝♞♜
♟♟♟♟♟♟♟♟
________
________
________
________
♙♙♙♙♙♙♙♙
♖♘♗♕♔♗♘♖
"""
        XCTAssertEqual(boardDummy, board.makeBoardResult())
    }
}
