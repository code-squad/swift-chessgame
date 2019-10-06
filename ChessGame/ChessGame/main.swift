//
//  main.swift
//  ChessGame
//
//  Created by JK on 2019/09/26.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

print("Hello, World!")

struct Pawn {
	let color: Color
	
	enum Color: String {
		case white
		case black
	}
	
	init(color: Color) {
		self.color = color
	}
	
	init?(string: String) {
		let lowercased = string.lowercased()
		switch Color(rawValue: lowercased) {
		case .some(let color):
			self.color = color
			return
		case .none:
			return nil
		}
	}
}

class Board {
	private var pawns = [Pawn]()
	
	var pawnCount: Int {
		return pawns.count
	}
	
	func add(_ pawn: Pawn) {
		pawns.append(pawn)
	}
}
