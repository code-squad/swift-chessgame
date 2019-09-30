//
//  PositionTest.swift
//  ChessTest
//
//  Created by JK on 2019/09/29.
//  Copyright © 2019 codesquad. All rights reserved.
//

import XCTest

class PositionTest: XCTestCase {

    override func setUp() {
    }

    override func tearDown() {
    }

    func test생성하기() {
        let position = Position(with: "a1")
        XCTAssertNotNil(position)
    }
    
    func test문자열A1_위치정상() {
        let position = Position(with: "a1")!
        XCTAssertEqual(1, position.x)
        XCTAssertEqual(1, position.y)
        XCTAssertEqual(0, position.zerobased.x)
        XCTAssertEqual(0, position.zerobased.y)
    }

    func test문자열A8_위치정상() {
        let position = Position(with: "a8")!
        XCTAssertEqual(1, position.x)
        XCTAssertEqual(8, position.y)
        XCTAssertEqual(0, position.zerobased.x)
        XCTAssertEqual(7, position.zerobased.y)
    }

    func test문자열H1_위치정상() {
        let position = Position(with: "h1")!
        XCTAssertEqual(8, position.x)
        XCTAssertEqual(1, position.y)
        XCTAssertEqual(7, position.zerobased.x)
        XCTAssertEqual(0, position.zerobased.y)
    }

    func test문자열H8_위치정상() {
        let position = Position(with: "h8")!
        XCTAssertEqual(8, position.x)
        XCTAssertEqual(8, position.y)
        XCTAssertEqual(7, position.zerobased.x)
        XCTAssertEqual(7, position.zerobased.y)
    }
}
