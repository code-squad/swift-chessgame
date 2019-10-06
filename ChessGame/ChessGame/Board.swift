//
//  Board.swift
//  ChessGame
//
//  Created by hoemoon on 2019/10/06.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Board {
	private var coordinate = [[Piece]]()
	
	private var flatted: [Piece] {
		coordinate.reduce([]) { result, array in result + array }
	}
			
	func rowRepresentation(_ row: Position.Row) -> String {
		let translated = row.rawValue - 1
		guard coordinate.count >= translated else { return "" }
		return coordinate[translated]
			.map { $0.representation }
			.reduce("") { result, string in return result + string }
	}
				
	func initailize() {
		coordinate = []
		for index in 1...8 {
			coordinate.append(makePieces(for: index))
		}
	}
	
	func initailizeForEmpty() {
		coordinate = []
		for _ in 1...8 {
			coordinate.append(Piece.makeEmpty())
		}
	}
	
	func count(type: Piece.PieceType, color: Piece.Color) -> Int {
		return flatted
			.filter { $0.type == type && $0.color == color }
			.count
	}
	
	func getPiece(position: Position) -> Piece {
		coordinate[position.translated.0][position.translated.1]
	}
	
	func add(piece: Piece, to position: Position) {
		coordinate[position.translated.0][position.translated.1] = piece
	}
	
	func calculateScore(for color: Piece.Color) -> Double {
		let filtered = flatted.filter { $0.color == color }
		var score: Double = 0
		for piece in filtered {
			switch piece.type {
			case .queen:
				score += 9
			case .rook:
				score += 5
			case .bishop:
				score += 3
			case .knight:
				score += 2.5
			default:
				continue
			}
		}
		score += calcuatePawnScore(for: color)
		return score
	}
	
	private func calculatePosition(for piece: Piece) throws -> Position {
		guard let rowIndex = flatted.firstIndex(of: piece) else {
			fatalError()
		}
		let quotient = (rowIndex / Position.Row.allCases.count)
		guard let columnIndex = coordinate[quotient].firstIndex(of: piece) else {
			fatalError()
		}
		guard let row = Position.Row(rawValue: quotient + 1) else {
			fatalError()
		}
		guard let column = Position.Column(rawValue: columnIndex + 1) else {
			fatalError()
		}
		return Position(row: row, column: column)
	}
	
	private func calcuatePawnScore(for color: Piece.Color) -> Double {
		let positions = flatted
			.filter { $0.color == color && $0.type == .pawn }
			.compactMap { try? calculatePosition(for: $0) }
		let columns = positions.map { $0.column }
		var result = Double(columns.count) * 0.5
		for column in columns {
			let filtered = positions.filter { $0.column == column }
			if filtered.count == 1 {
				result += 0.5
			}
		}
		return result
	}
	
	private func makePieces(for index: Int) -> [Piece] {
		if index == 1 {
			return Piece.makeBack(color: .black)
		}
		if index == 2 {
			return Piece.makeFront(color: .black)
		}
		if index == 7 {
			return Piece.makeFront(color: .white)
		}
		if index == 8 {
			return Piece.makeBack(color: .white)
		}
		return Piece.makeEmpty()
	}
}

extension Board: Displayable {
	func represent() -> [String] {
		return Position.Row.allCases.map { rowRepresentation($0) }
	}
}
