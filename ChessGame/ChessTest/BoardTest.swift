//
//  BoardTest.swift
//  ChessTest
//
//  Created by JK on 2019/09/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import XCTest

class BoardTest: XCTestCase {
    var board : Board!
    
    override func setUp() {
        board = Board()
    }

    override func tearDown() {
    }


    func test보드_초기화_성공() {
        board.initialize()
        let boardDummy = """
♖♘♗♕♔♗♘♖
♙♙♙♙♙♙♙♙
________
________
________
________
♟♟♟♟♟♟♟♟
♜♞♝♛♚♝♞♜
"""
        XCTAssertEqual(boardDummy, board.showBoard())
    }
    
    func test색상과타입_개수() {
        board.initialize()
        
        XCTAssertEqual(8, board.count(color: .white, type: .pawn))
        XCTAssertEqual(2, board.count(color: .black, type: .bishop))
        XCTAssertEqual(1, board.count(color: .white, type: .king))
    }
    
    func test피스찾기_A8_성공() {
        board.initialize()
        
        let a8 = Piece.makeBlackRook(position: Position(with: "a8")!)
        let piece = board.findPiece(at: "a8")!
        XCTAssertEqual(a8, piece)
    }

    func test피스찾기_H8_성공() {
        board.initialize()
        
        let h8 = Piece.makeBlackRook(position: Position(with: "h8")!)
        let piece = board.findPiece(at: "h8")!
        XCTAssertEqual(h8, piece)
    }
    
    func test피스찾기_A1_성공() {
        board.initialize()
        
        let a1 = Piece.makeWhiteRook(position: Position(with: "a1")!)
        let piece = board.findPiece(at: "a1")!
        XCTAssertEqual(a1, piece)
    }

    func test피스찾기_H1_성공() {
        board.initialize()
        
        let h1 = Piece.makeWhiteRook(position: Position(with: "h1")!)
        let piece = board.findPiece(at: "h1")!
        XCTAssertEqual(h1, piece)
    }

    func test피스옮기기_성공() {
        board.initializeEmpty()
        
        let position = "b5"
        let piece = Piece.makeBlackRook(position: Position(with: "b5")!)
        board.move(piece, to: position)
        XCTAssertEqual(piece, board.findPiece(at: "b5"))
    }
    
    private func add(piece: Piece) {
        board.move(piece, to: piece.position)
    }
    
    func test폰_점수계산() {
        board.initializeEmpty()
        
        add(piece: Piece.makeBlackPawn(position: Position(with: "b6")!))
        add(piece: Piece.makeBlackPawn(position: Position(with: "b5")!))
        add(piece: Piece.makeBlackPawn(position: Position(with: "b4")!))
        XCTAssertEqual(1.5, board.point(of: .black), accuracy: 0.01)
    }
    
    func test검정색말_점수계산() {
        board.initializeEmpty()
        add(piece: Piece.makeBlackPawn(position: Position(with: "b6")!))
        add(piece: Piece.makeBlackQueen(position: Position(with: "e6")!))
        add(piece: Piece.makeBlackKing(position: Position(with: "b8")!))
        add(piece: Piece.makeBlackRook(position: Position(with: "c8")!))

        XCTAssertEqual(15.0, board.point(of: .black), accuracy: 0.01)
    }

    func test흰색말_점수계산() {
        board.initializeEmpty()
        add(piece: Piece.makeWhitePawn(position: Position(with: "f2")!))
        add(piece: Piece.makeWhitePawn(position: Position(with: "g2")!))
        add(piece: Piece.makeWhiteKing(position: Position(with: "f1")!))
        add(piece: Piece.makeWhiteRook(position: Position(with: "e1")!))

        XCTAssertEqual(7.0, board.point(of: .white), accuracy: 0.01)
    }

}
