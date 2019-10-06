//
//  Piece.swift
//  ChessGame
//
//  Created by hoemoon on 2019/10/06.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Piece {
	let color: Color
	let type: PieceType
	
	var isBlack: Bool {
		color == .black
	}
	
	var isWhite: Bool {
		color == .white
	}
	
	var representation: String {
		switch color {
		case .black:
			return type.blackRepresentation
		case .white:
			return type.whiteRepresentation
		}
	}
	
	enum PieceType {
		case pawn, knight, rook, bishop, queen, king
		
		var count: Int {
			switch self {
			case .pawn: return 8
			case .knight, .rook, .bishop: return 2
			case .queen, .king: return 1
			}
		}
		
		var blackRepresentation: String {
			switch self {
			case .pawn: return "♟"
			case .knight: return "♞"
			case .rook: return "♜"
			case .bishop: return "♝"
			case .queen: return "♛"
			case .king: return "♚"
			}
		}
		
		var whiteRepresentation: String {
			switch self {
			case .pawn: return "♙"
			case .knight: return "♘"
			case .rook: return "♖"
			case .bishop: return "♗"
			case .queen: return "♕"
			case .king: return "♔"
			}
		}
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
		
	static func makeFront(color: Color) -> [Piece] {
		return Array(1...8)
			.map { _ in Piece(color: color, type: .pawn) }
	}
	
	static func makeBack(color: Color) -> [Piece] {
		return [
			Piece(color: color, type: .rook),
			Piece(color: color, type: .knight),
			Piece(color: color, type: .bishop),
			Piece(color: color, type: .queen),
			Piece(color: color, type: .king),
			Piece(color: color, type: .bishop),
			Piece(color: color, type: .knight),
			Piece(color: color, type: .rook),
		]
	}
}
