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
        XCTAssertTrue(verifyPawnAdded(pawn: Pawn(color: .white)))
        XCTAssertTrue(verifyPawnAdded(pawn: Pawn(color: .black)))
    }
    
    private func verifyPawnAdded(pawn: Pawn) -> Bool {
        let board = Board()
        board.add(pawn: pawn)
        return board.count == 1 && board[0] == pawn
    }

}
