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
			XCTAssertEqual(board.rowRepresentation(.two), "♟♟♟♟♟♟♟♟")
		}
		it("검은 색 뒷 열 제대로 가지는지 확인") {
			XCTAssertEqual(board.rowRepresentation(.one), "♜♞♝♛♚♝♞♜")
		}
		it("흰 색 뒷 열 제대로 가지는지 확인") {
			XCTAssertEqual(board.rowRepresentation(.eight), "♖♘♗♕♔♗♘♖")
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
	}
}
