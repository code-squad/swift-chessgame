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
			expect(Pawn(string: "black")).notTo(beNil())
			expect(Pawn(string: "black")!.color.rawValue).to(be("black"))
		}
	}
}
