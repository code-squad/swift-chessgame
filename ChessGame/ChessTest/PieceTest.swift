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

    func verifyWhite(piece: Piece, type: Piece.TypeCase) -> Bool {
        return (piece.color == .white && piece.type == type)
    }

    func verifyBlack(piece: Piece, type: Piece.TypeCase) -> Bool {
        return (piece.color == .black && piece.type == type)
    }

    func testPawn_생성하기() {
        let dummy = Position(x: 1, y: 1)
        let whitePawn = Piece.makeWhitePawn(position: dummy)
        XCTAssertTrue(verifyWhite(piece: whitePawn, type:.pawn))

        let blackPawn = Piece.makeBlackPawn(position: dummy)
        XCTAssertTrue(verifyBlack(piece: blackPawn, type:.pawn))
    }
    
    func testRook_생성하기() {
        let dummy = Position(x: 1, y: 1)
        let whiteRook = Piece.makeWhiteRook(position: dummy)
        XCTAssertTrue(verifyWhite(piece: whiteRook, type:.rook))

        let blackRook = Piece.makeBlackRook(position: dummy)
        XCTAssertTrue(verifyBlack(piece: blackRook, type:.rook))
    }

    func testBishop_생성하기() {
        let dummy = Position(x: 1, y: 1)
        let whiteBishop = Piece.makeWhiteBishop(position: dummy)
        XCTAssertTrue(verifyWhite(piece: whiteBishop, type:.bishop))

        let blackBishop = Piece.makeBlackBishop(position: dummy)
        XCTAssertTrue(verifyBlack(piece: blackBishop, type:.bishop))
    }
    
    func testKnight_생성하기() {
        let dummy = Position(x: 1, y: 1)
        let whiteKnight = Piece.makeWhiteKnight(position: dummy)
        XCTAssertTrue(verifyWhite(piece: whiteKnight, type:.knight))

        let blackKnight = Piece.makeBlackKnight(position: dummy)
        XCTAssertTrue(verifyBlack(piece: blackKnight, type:.knight))
    }
    
    func testQueen_생성하기() {
        let dummy = Position(x: 1, y: 1)
        let whiteQueen = Piece.makeWhiteQueen(position: dummy)
        XCTAssertTrue(verifyWhite(piece: whiteQueen, type:.queen))

        let blackQueen = Piece.makeBlackQueen(position: dummy)
        XCTAssertTrue(verifyBlack(piece: blackQueen, type:.queen))
    }

    func testKing_생성하기() {
        let dummy = Position(x: 1, y: 1)
        let whiteKing = Piece.makeWhiteKing(position: dummy)
        XCTAssertTrue(verifyWhite(piece: whiteKing, type:.king))

        let blackKing = Piece.makeBlackKing(position: dummy)
        XCTAssertTrue(verifyBlack(piece: blackKing, type:.king))
    }
    
    func testWhitePieces_생성하기() {
        let dummy = Position(x: 1, y: 1)
        XCTAssertTrue(Piece.makeWhitePawn(position: dummy).isWhite())
        XCTAssertTrue(Piece.makeWhiteRook(position: dummy).isWhite())
        XCTAssertTrue(Piece.makeWhiteKnight(position: dummy).isWhite())
        XCTAssertTrue(Piece.makeWhiteBishop(position: dummy).isWhite())
        XCTAssertTrue(Piece.makeWhiteQueen(position: dummy).isWhite())
        XCTAssertTrue(Piece.makeWhiteKing(position: dummy).isWhite())
    }
    
    func testBlackPieces_생성하기() {
        let dummy = Position(x: 1, y: 1)
        XCTAssertTrue(Piece.makeBlackPawn(position: dummy).isBlack())
        XCTAssertTrue(Piece.makeBlackRook(position: dummy).isBlack())
        XCTAssertTrue(Piece.makeBlackKnight(position: dummy).isBlack())
        XCTAssertTrue(Piece.makeBlackBishop(position: dummy).isBlack())
        XCTAssertTrue(Piece.makeBlackQueen(position: dummy).isBlack())
        XCTAssertTrue(Piece.makeBlackKing(position: dummy).isBlack())
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
