//
//  Pawn.swift
//  ChessGame
//
//  Created by hoemoon on 2019/10/06.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Pawn {
	let color: Color
	var representation: String {
		return color.representation
	}
	
	enum Color: String {
		case white
		case black
		
		var representation: String {
			switch self {
			case .black: return "\u{265F}"
			case .white: return "\u{2659}"
			}
		}
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
	
	static func makePawns(color: Color) -> [Pawn] {
		return Array(1...8)
			.map { _ in Pawn(color: color) }
	}
}
