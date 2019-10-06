//
//  Board.swift
//  ChessGame
//
//  Created by hoemoon on 2019/10/06.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Board {
	private var coordinate = [[String]]()
	
	enum Row: Int, CaseIterable {
		case one = 1
		case two
		case three
		case four
		case five
		case six
		case seven
		case eight
	}
		
	func rowRepresentation(_ row: Row) -> String {
		let translated = row.rawValue - 1
		guard coordinate.count >= translated else { return "" }
		return coordinate[translated].reduce("") { (result, string) -> String in
			return result + string
		}
	}
			
	init() {
		let line = Array(1...8).map { _ in "_" }
		coordinate.append(line)
		coordinate.append(
			Pawn.makePawns(color: .black).map { $0.representation }
		)
		coordinate.append(line)
		coordinate.append(line)
		coordinate.append(line)
		coordinate.append(line)
		coordinate.append(
			Pawn.makePawns(color: .white).map { $0.representation }
		)
		coordinate.append(line)
	}
}

extension Board: Displayable {
	func representation() -> [String] {
		return Row.allCases.map { rowRepresentation($0) }
	}
}
