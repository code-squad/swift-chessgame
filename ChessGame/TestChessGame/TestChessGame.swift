//
//  TestChessGame.swift
//  TestChessGame
//
//  Created by RENO1 on 02/10/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import XCTest

class TestChessGame: XCTestCase {

    func test_검은색_폰(){
        let blackPawn = Pawn(team:.BLACK)
        XCTAssertEqual(blackPawn.team, Team.BLACK)
    }
    
    func test_흰색_폰(){
        let whitePawn = Pawn(team:.WHITE)
        XCTAssertEqual(whitePawn.team, Team.WHITE)
    }
}
