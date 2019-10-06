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
		it("검은색 폰과 흰색 폰을 각각 8개씩 가지도록 초기화") {
			let board = Board()
			XCTAssertEqual(board.rowRepresentation(.two), "♟♟♟♟♟♟♟♟")
		}
	}
}
