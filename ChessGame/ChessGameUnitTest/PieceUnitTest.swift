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

class PieceUnitTest: QuickSpec {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func verifyPawn(color: PawnColor, representation: Piece.Representation) -> Bool {
        let pawn = Piece(color: color, representation: representation)
        return pawn.color == color
    }
    
    
    override func spec() {
        describe("Pawn") {
            context("when an instance is created") {
                it("instance is created correctly") {
                    let pawn = Piece(color: .black, representation: .pawn)
                    expect(pawn).to(beAnInstanceOf(Piece.self))
                }
                
                it("instance has the black color") {
                    expect(self.verifyPawn(color: .black, representation: .pawn)) == true
                }
                
                it("instance has the white color") {
                    expect(self.verifyPawn(color: .white, representation: .pawn)) == true
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
