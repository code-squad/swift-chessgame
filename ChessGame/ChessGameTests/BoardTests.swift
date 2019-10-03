//
//  BoardTests.swift
//  ChessGameTests
//
//  Created by sungchan.you on 2019/10/03.
//  Copyright © 2019 codesquad. All rights reserved.
//

import XCTest

class BoardTests: XCTestCase {
    
    let board = Board()

    func test보드생성_성공() {
        let whitePawn = Pawn.init(color: Pawn.Color.white)
        board.add(pawn: whitePawn)
        XCTAssertEqual(board.count, 1)
        XCTAssertEqual(board.whitePawn(at: 0), whitePawn)
        
        let blackPawn = Pawn.init(color: Pawn.Color.black)
        board.add(pawn: blackPawn)
        XCTAssertEqual(board.count, 2)
        XCTAssertEqual(board.blackPawn(at: 0), blackPawn)
    }
    
    func test보드_초기화_성공() {
        board.initialize()
        XCTAssertEqual(board.whitePawnsResult(), "♙♙♙♙♙♙♙♙")
        XCTAssertEqual(board.blackPawnsResult(), "♟♟♟♟♟♟♟♟")
    }
}
