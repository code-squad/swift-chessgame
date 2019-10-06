//
//  Position.swift
//  ChessGame
//
//  Created by hoemoon on 2019/10/06.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Position: Equatable {
	let row: Row
	let column: Column
	
	enum Row: Int, CaseIterable {
		case eight = 1
		case seven
		case six
		case five
		case four
		case three
		case two
		case one
	}
	
	enum Column: Int {
		case a = 1
		case b
		case c
		case d
		case e
		case f
		case g
		case h
	}
	
	var translated: (Int, Int) {
		return (row.rawValue - 1, column.rawValue - 1)
	}
}
