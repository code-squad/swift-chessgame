//
//  BoardTest.swift
//  ChessGameTests
//
//  Created by junwoo on 2019/10/06.
//  Copyright © 2019 codesquad. All rights reserved.
//

import XCTest

class BoardTest: XCTestCase {
    
    override func setUp() {
    }

    override func tearDown() {
    }

    func test보드생성_성공() {
        let whitePawn = Pawn()
        let blackPawn = Pawn(color: .black, representation: Pawn.Color.black.rawValue)
        XCTAssertTrue(verifyPawnAdded(pawn: whitePawn))
        XCTAssertTrue(verifyPawnAdded(pawn: blackPawn))
    }
    
    private func verifyPawnAdded(pawn: Pawn) -> Bool {
        let board = Board()
        board.add(pawn: pawn)
        if pawn.color == .black {
            return board.count == 1 && board.blackPawn(index: 0) == pawn
        }
        return board.count == 1 && board.whitePawn(index: 0) == pawn
    }
    
    func test보드_초기화_성공() {
        let board = Board()
        board.initialize()
        XCTAssertEqual(board.whitePawnsResult(), "♙♙♙♙♙♙♙♙")
        XCTAssertEqual(board.blackPawnsResult(), "♟♟♟♟♟♟♟♟")
    }

}
