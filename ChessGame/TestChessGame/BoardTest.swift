//
/******************************************************************************
 * File Name        : BoardTest.swift
 * Description      : ChessGame
 *******************************************************************************
 * Copyright (c) 2002-2019 KineMaster Corp. All rights reserved.
 * https://www.kinemastercorp.com/
 *
 * THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR
 * PURPOSE.
 ******************************************************************************/

import XCTest

class BoardTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func test보드생성_성공() {
        let board = Board()
        
        let whitePawn = Pawn.init(with: Pawn.PieceColor.white)
        board.add(pawn: whitePawn)
        XCTAssert(board.count == 1)
        XCTAssert(board[0] == whitePawn)
        
        let blackPawn = Pawn.init(with: Pawn.PieceColor.black)
        board.add(pawn: blackPawn)
        XCTAssert(board.count == 2)
        XCTAssert(board[1] == blackPawn)
    }

}

