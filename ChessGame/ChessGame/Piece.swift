//
//  Piece.swift
//  ChessGame
//
//  Created by hoemoon on 2019/10/06.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Piece: Hashable {
	let id = UUID()
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
		case .none:
			return type.noneRepresentation
		}
	}
	
	enum PieceType {
		case pawn, knight, rook, bishop, queen, king, none
		
		var blackRepresentation: String {
			switch self {
			case .pawn: return "♟"
			case .knight: return "♞"
			case .rook: return "♜"
			case .bishop: return "♝"
			case .queen: return "♛"
			case .king: return "♚"
			default: return "_"
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
			default: return "_"
			}
		}
		
		var noneRepresentation: String {
			return "_"
		}
	}
	
	enum Color: String {
		case white
		case black
		case none
	}
	
	static var none: Piece {
		return Piece(color: .none, type: .none)
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
	static func makeEmpty() -> [Piece] {
		return Array(1...8)
			.map { _ in Piece(color: .none, type: .none) }
	}
}
