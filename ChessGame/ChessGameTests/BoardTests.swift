//
//  BoardTests.swift
//  BoardTests
//
//  Created by hoemoon on 2019/10/06.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Nimble
import Quick

class BoardSpec: QuickSpec {
	override func spec() {
		let board = Board()
		beforeEach {
			board.initailize()
		}
		it("인스턴스 만들기") {
			expect(board).notTo(beNil())
		}
		it("검은색 폰과 흰색 폰을 각각 8개씩 가지도록 초기화") {
			XCTAssertEqual(board.rowRepresentation(.seven), "♟♟♟♟♟♟♟♟")
		}
		it("검은 색 뒷 열 제대로 가지는지 확인") {
			XCTAssertEqual(board.rowRepresentation(.eight), "♜♞♝♛♚♝♞♜")
		}
		it("흰 색 뒷 열 제대로 가지는지 확인") {
			XCTAssertEqual(board.rowRepresentation(.one), "♖♘♗♕♔♗♘♖")
		}
		
		it("판 전체가 제대로 초기화되는지 확인") {
			let boardDummy = """
			♜♞♝♛♚♝♞♜
			♟♟♟♟♟♟♟♟
			________
			________
			________
			________
			♙♙♙♙♙♙♙♙
			♖♘♗♕♔♗♘♖
			"""
			let joined = board.represent().joined(separator: "\n")
			XCTAssertEqual(joined, boardDummy)
		}
		it("특정 말의 갯수를 정확히 알아내기") {
			XCTAssertEqual(board.count(type: .pawn, color: .white), 8)
			XCTAssertEqual(board.count(type: .king, color: .white), 1)
			XCTAssertEqual(board.count(type: .rook, color: .white), 2)
		}
		
		it("특정 위치의 말 알아내기") {
			let position = Position(row: .seven, column: .a)
			let piece = board.getPiece(position: position)
			XCTAssertEqual(piece.type, .pawn)
			XCTAssertEqual(piece.color, .black)
		}
		
		it("특정 좌표에 피스 놓기") {
			board.initailizeForEmpty()
			let position = Position(row: .eight, column: .c)
			board.add(
				piece: Piece(color: .black, type: .bishop),
				to: position
			)
			
			let piece = board.getPiece(position: position)
			XCTAssertEqual(piece.color, .black)
			XCTAssertEqual(piece.type, .bishop)
		}
				
		it("점수 계산하기") {
			let board = BoardSpec.makeTestBoard()
			XCTAssertEqual(board.calculateScore(for: .black), 20)
			XCTAssertEqual(board.calculateScore(for: .white), 19.5)
		}
	}
}

extension BoardSpec {
	private static func makeTestBoard() -> Board {
let _ = """
		_♚♜_____  8
		♟_♟♝____  7
		_♟__♛___  6
		________  5
		_____♘♕_  4
		_____♙_♙  3
		_____♙♙_  2
		____♖♔__  1

		abcdefgh
"""
		let board = Board()
		board.initailizeForEmpty()
		board.add(
			piece: Piece(color: .black, type: .king),
			to: Position(row: .eight, column: .b)
		)
		board.add(
			piece: Piece(color: .black, type: .rook),
			to: Position(row: .eight, column: .c)
		)
		board.add(
			piece: Piece(color: .black, type: .pawn),
			to: Position(row: .seven, column: .a)
		)
		board.add(
			piece: Piece(color: .black, type: .pawn),
			to: Position(row: .seven, column: .c)
		)
		board.add(
			piece: Piece(color: .black, type: .bishop),
			to: Position(row: .seven, column: .d)
		)
		board.add(
			piece: Piece(color: .black, type: .pawn),
			to: Position(row: .six, column: .b)
		)
		board.add(
			piece: Piece(color: .black, type: .queen),
			to: Position(row: .six, column: .e)
		)
		
		board.add(
			piece: Piece(color: .white, type: .knight),
			to: Position(row: .four, column: .f)
		)
		board.add(
			piece: Piece(color: .white, type: .queen),
			to: Position(row: .four, column: .g)
		)
		board.add(
			piece: Piece(color: .white, type: .pawn),
			to: Position(row: .three, column: .f)
		)
		board.add(
			piece: Piece(color: .white, type: .pawn),
			to: Position(row: .three, column: .h)
		)
		board.add(
			piece: Piece(color: .white, type: .pawn),
			to: Position(row: .two, column: .f)
		)
		board.add(
			piece: Piece(color: .white, type: .pawn),
			to: Position(row: .two, column: .g)
		)
		board.add(
			piece: Piece(color: .white, type: .rook),
			to: Position(row: .one, column: .e)
		)
		board.add(
			piece: Piece(color: .white, type: .king),
			to: Position(row: .one, column: .f)
		)
		return board
	}
}
