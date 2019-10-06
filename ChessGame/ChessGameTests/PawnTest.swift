//
//  PawnTest.swift
//  PawnTest
//
//  Created by hoemoon on 2019/10/06.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Nimble
import Quick

class PawnSpec: QuickSpec {
	override func spec() {
		it("인스턴스 만들기") {
			expect(Piece(color: .black, type: .pawn)).notTo(beNil())
		}
		
		it("색 확인하기") {
			expect(Piece(color: .black, type: .pawn).isBlack).to(beTrue())
			expect(Piece(color: .white, type: .pawn).isBlack).to(beFalse())
		}
		
		it("문자열 표현 확인하기") {
			XCTAssertNotEqual(Piece(color: .black, type: .pawn).representation, "♙")
			XCTAssertEqual(Piece(color: .black, type: .pawn).representation, "♟")
			XCTAssertEqual(Piece(color: .white, type: .pawn).representation, "♙")
		}
	}
}
