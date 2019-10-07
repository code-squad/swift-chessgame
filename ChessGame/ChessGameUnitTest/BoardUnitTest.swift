//
//  BoardUnitTest.swift
//  ChessGameUnitTest
//
//  Created by temphee.Reid on 04/10/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import XCTest
import Quick
import Nimble

class BoardUnitTest: QuickSpec {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    override func spec() {
        describe("Board") {
            context("when an instance is created") {
                it("instance is created correctly") {
                    let board = Board()
                    expect(board).to(beAnInstanceOf(Board.self))
                }
            }
            
            context("when pawn is added to board") {
                it("board has as many pawns added.") {
                    let board = Board()
                    board.addPawn(piece: Piece(color: .black, representation: .pawn))
                    expect(board.pawnCount()).to(equal(1))
                    
                    board.addPawn(piece: Piece(color: .white, representation: .pawn))
                    expect(board.pawnCount()).to(equal(2))
                }
            }
            
            context("when board is initialized") {
                it("bard has 8 white pawns and 8 black pawns") {
                    let board = Board()
                    board.initialize()
                    expect(board.whitePawnResult()).to(equal( "♙♙♙♙♙♙♙♙\n"))
                    expect(board.blackPawnResult()).to(equal("♟♟♟♟♟♟♟♟\n"))
                }
            }
        }
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
