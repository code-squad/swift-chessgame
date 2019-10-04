//
/******************************************************************************
 * File Name        : PieceTest.swift
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

class PieceTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func verify(piece: Piece, side: Piece.Side, type: Piece.`Type`) -> Bool {
        return (piece.side == side && piece.type == type)
    }

    func testPiece_생성하기() {
        let whitePawn = Piece(.pawn, of: .white)
        XCTAssertTrue(verify(piece: whitePawn, side: .white, type: .pawn))
        XCTAssertTrue(whitePawn.isWhite())

        let blackPawn = Piece(.pawn, of: .black)
        XCTAssertTrue(verify(piece: blackPawn, side: .black, type: .pawn))
        XCTAssertTrue(blackPawn.isBlack())
        XCTAssertFalse(blackPawn.isWhite())
        
        let blackKing = Piece(.king, of: .black)
        XCTAssertTrue(verify(piece: blackKing, side: .black, type: .king))
    }

}
