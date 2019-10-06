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
		it("인스턴스 만들기") {
			expect(Board()).notTo(beNil())
		}
		it("pawn 추가하기") {
			let board = Board()
			let pawn = Pawn(color: .black)
			board.add(pawn)
			expect(board.pawnCount).to(be(1))
		}
	}
}
