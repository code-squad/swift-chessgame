//
/******************************************************************************
 * File Name        : TestChessGame.swift
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

class TestChessGame: XCTestCase {

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
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    
    
    func test인스턴스_생성하기() {
        let pawn = Pawn(color: .black)
        XCTAssertNotNil(pawn)
    }
    
    func test흰색으로생성하기() {
        XCTAssert(verifyPawn(color: .white))
    }
    
    func test검정으로생성하기() {
        XCTAssert(verifyPawn(color: .black))
    }
    

    func verifyPawn(color: PieceColor) -> Bool {
        let pawn = Pawn(color: color)
        return (pawn.color == color)
    }

}
