//
//  PawnTest.swift
//  PawnTest
//
//  Created by JK on 2019/09/26.
//  Copyright © 2019 codesquad. All rights reserved.
//

import XCTest

class PieceTest: XCTestCase {

    override func setUp() {
    }

    override func tearDown() {
    }

    func verify(piece: Piece, color: String, representation: String) -> Bool {
        return (piece.color == color && piece.representation == representation)
    }

    func testPawn_생성하기() {
        let whitePawn = Piece.makeWhitePawn()
        XCTAssertTrue(verify(piece: whitePawn, color: Piece.Color.white, representation: Piece.Representation.Pawn.white))

        let blackPawn = Piece.makeBlackPawn()
        XCTAssertTrue(verify(piece: blackPawn, color: Piece.Color.black, representation: Piece.Representation.Pawn.black))
    }
    
    func testRook_생성하기() {
        let whiteRook = Piece.makeWhiteRook()
        XCTAssertTrue(verify(piece: whiteRook, color: Piece.Color.white, representation: Piece.Representation.Rook.white))

        let blackRook = Piece.makeBlackRook()
        XCTAssertTrue(verify(piece: blackRook, color: Piece.Color.black, representation: Piece.Representation.Rook.black))
    }

    func testBishop_생성하기() {
        let whiteBishop = Piece.makeWhiteBishop()
        XCTAssertTrue(verify(piece: whiteBishop, color: Piece.Color.white, representation: Piece.Representation.Bishop.white))

        let blackBishop = Piece.makeBlackBishop()
        XCTAssertTrue(verify(piece: blackBishop, color: Piece.Color.black, representation: Piece.Representation.Bishop.black))
    }
    
    func testKnight_생성하기() {
        let whiteKnight = Piece.makeWhiteKnight()
        XCTAssertTrue(verify(piece: whiteKnight, color: Piece.Color.white, representation: Piece.Representation.Knight.white))

        let blackKnight = Piece.makeBlackKnight()
        XCTAssertTrue(verify(piece: blackKnight, color: Piece.Color.black, representation: Piece.Representation.Knight.black))
    }
    
    func testQueen_생성하기() {
        let whiteQueen = Piece.makeWhiteQueen()
        XCTAssertTrue(verify(piece: whiteQueen, color: Piece.Color.white, representation: Piece.Representation.Queen.white))

        let blackQueen = Piece.makeBlackQueen()
        XCTAssertTrue(verify(piece: blackQueen, color: Piece.Color.black, representation: Piece.Representation.Queen.black))
    }

    func testKing_생성하기() {
        let whiteKing = Piece.makeWhiteKing()
        XCTAssertTrue(verify(piece: whiteKing, color: Piece.Color.white, representation: Piece.Representation.King.white))

        let blackKing = Piece.makeBlackKing()
        XCTAssertTrue(verify(piece: blackKing, color: Piece.Color.black, representation: Piece.Representation.King.black))
    }
    
    func testWhitePieces_생성하기() {
        XCTAssertTrue(Piece.makeWhitePawn().isWhite())
        XCTAssertTrue(Piece.makeWhiteRook().isWhite())
        XCTAssertTrue(Piece.makeWhiteKnight().isWhite())
        XCTAssertTrue(Piece.makeWhiteBishop().isWhite())
        XCTAssertTrue(Piece.makeWhiteQueen().isWhite())
        XCTAssertTrue(Piece.makeWhiteKing().isWhite())
    }
    
    func testBlackPieces_생성하기() {
        XCTAssertTrue(Piece.makeBlackPawn().isBlack())
        XCTAssertTrue(Piece.makeBlackRook().isBlack())
        XCTAssertTrue(Piece.makeBlackKnight().isBlack())
        XCTAssertTrue(Piece.makeBlackBishop().isBlack())
        XCTAssertTrue(Piece.makeBlackQueen().isBlack())
        XCTAssertTrue(Piece.makeBlackKing().isBlack())
    }
    
    func verifyPawn(color: String, representation: String) -> Bool {
        let pawn = Pawn(with: color, representation: representation)
        return pawn.color == color
    }

    func test화이트_인스턴스_생성하기() {
        XCTAssertTrue(verifyPawn(color: Pawn.Color.white, representation: Pawn.Representation.white))
    }

    func test블랙_인스턴스_생성하기() {
        XCTAssertTrue(verifyPawn(color: Pawn.Color.black, representation: Pawn.Representation.black))
    }
}
