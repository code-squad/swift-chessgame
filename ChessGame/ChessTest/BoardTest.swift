//
//  BoardTest.swift
//  ChessTest
//
//  Created by JK on 2019/09/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import XCTest

class BoardTest: XCTestCase {
    override func setUp() {
    }

    override func tearDown() {
    }

    func test보드생성_성공() {
        let board = Board()
        
        let whitePawn = Pawn.init(with: Pawn.Color.white)
        board.add(pawn: whitePawn)
        XCTAssertEqual(board.count, 1)
        XCTAssertEqual(board[0], whitePawn)
    }
}
