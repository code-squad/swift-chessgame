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
                    board.add(pawn: Pawn(color: .black))
                    expect(board.pawnCount()).to(equal(1))
                    expect(try! board.color(pawnIndex: 0)).to(equal(.black))
                    
                    board.add(pawn: Pawn(color: .white))
                    expect(board.pawnCount()).to(equal(2))
                    expect(try! board.color(pawnIndex: 1)).to(equal(.white))
                    
                    expect(try! board.color(pawnIndex: 0)).toNot(equal(.white))
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
