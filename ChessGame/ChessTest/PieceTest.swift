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
        let whitePawn = Pawn.makeWhite(at: dummy)
        XCTAssertTrue(verifyWhite(piece: whitePawn, type:.pawn))

        let blackPawn = Pawn.makeBlack(at: dummy)
        XCTAssertTrue(verifyBlack(piece: blackPawn, type:.pawn))
    }
    
    func testRook_생성하기() {
        let dummy = Position(x: 1, y: 1)
        let whiteRook = Rook.makeWhite(at: dummy)
        XCTAssertTrue(verifyWhite(piece: whiteRook, type:.rook))

        let blackRook = Rook.makeBlack(at: dummy)
        XCTAssertTrue(verifyBlack(piece: blackRook, type:.rook))
    }

    func testBishop_생성하기() {
        let dummy = Position(x: 1, y: 1)
        let whiteBishop = Bishop.makeWhite(at: dummy)
        XCTAssertTrue(verifyWhite(piece: whiteBishop, type:.bishop))

        let blackBishop = Bishop.makeBlack(at: dummy)
        XCTAssertTrue(verifyBlack(piece: blackBishop, type:.bishop))
    }
    
    func testKnight_생성하기() {
        let dummy = Position(x: 1, y: 1)
        let whiteKnight = Knight.makeWhite(at: dummy)
        XCTAssertTrue(verifyWhite(piece: whiteKnight, type:.knight))

        let blackKnight = Knight.makeBlack(at: dummy)
        XCTAssertTrue(verifyBlack(piece: blackKnight, type:.knight))
    }
    
    func testQueen_생성하기() {
        let dummy = Position(x: 1, y: 1)
        let whiteQueen = Queen.makeWhite(at: dummy)
        XCTAssertTrue(verifyWhite(piece: whiteQueen, type:.queen))

        let blackQueen = Queen.makeBlack(at: dummy)
        XCTAssertTrue(verifyBlack(piece: blackQueen, type:.queen))
    }

    func testKing_생성하기() {
        let dummy = Position(x: 1, y: 1)
        let whiteKing = King.makeWhite(at: dummy)
        XCTAssertTrue(verifyWhite(piece: whiteKing, type:.king))

        let blackKing = King.makeBlack(at: dummy)
        XCTAssertTrue(verifyBlack(piece: blackKing, type:.king))
    }
    
    func testWhitePieces_생성하기() {
        let dummy = Position(x: 1, y: 1)
        XCTAssertTrue(Pawn.makeWhite(at: dummy).isWhite())
        XCTAssertTrue(Rook.makeWhite(at: dummy).isWhite())
        XCTAssertTrue(Knight.makeWhite(at: dummy).isWhite())
        XCTAssertTrue(Bishop.makeWhite(at: dummy).isWhite())
        XCTAssertTrue(Queen.makeWhite(at: dummy).isWhite())
        XCTAssertTrue(King.makeWhite(at: dummy).isWhite())
    }
    
    func testBlackPieces_생성하기() {
        let dummy = Position(x: 1, y: 1)
        XCTAssertTrue(Pawn.makeBlack(at: dummy).isBlack())
        XCTAssertTrue(Rook.makeBlack(at: dummy).isBlack())
        XCTAssertTrue(Knight.makeBlack(at: dummy).isBlack())
        XCTAssertTrue(Bishop.makeBlack(at: dummy).isBlack())
        XCTAssertTrue(Queen.makeBlack(at: dummy).isBlack())
        XCTAssertTrue(King.makeBlack(at: dummy).isBlack())
    }
    
    func verifyPawn(color: Piece.Color, position: Position) -> Bool {
        let pawn = Pawn(with: color, position: position)
        return pawn.color == color
    }

    func test화이트_인스턴스_생성하기() {
        let dummy = Position(x: 1, y: 1)
        XCTAssertTrue(verifyPawn(color: Piece.Color.white, position: dummy))
    }

    func test블랙_인스턴스_생성하기() {
        let dummy = Position(x: 1, y: 1)
        XCTAssertTrue(verifyPawn(color: Piece.Color.black, position: dummy))
    }
}
