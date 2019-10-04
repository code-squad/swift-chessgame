//
//  ChessGameUnitTest.swift
//  ChessGameUnitTest
//
//  Created by temphee.Reid on 02/10/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import XCTest
import Quick
import Nimble

class ChessGameUnitTest: QuickSpec {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func verifyPawn(color: ChessPieceColor) -> Bool {
        let pawn = Pawn(color: color)
        return pawn.color == color
    }
    
    
    override func spec() {
        describe("Pawn") {
            context("when create instance") {
                it("instance is created") {
                    let pawn = Pawn(color: .black)
                    expect(pawn).to(beAnInstanceOf(Pawn.self))
                }
                
                it("instance has the black color") {
                    expect(self.verifyPawn(color: .black)) == true
                }
                
                it("instance has the white color") {
                    expect(self.verifyPawn(color: .white)) == true
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
