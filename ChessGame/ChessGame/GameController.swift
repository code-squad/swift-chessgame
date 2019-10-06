//
//  GameController.swift
//  ChessGame
//
//  Created by hoemoon on 2019/10/06.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct GameController {
	private static let board = Board()
	private static var input: String?
	
	enum Input: String {
		case s
		case e
	}
	
	static func setup() {
		board.initailize()
	}
	static func showRequestInputMessage() {
		OutputView.showRequestInputMessage()
	}
	
	static func getInput() {
		input = InputView.getInput()
	}
	
	static func handleInput() -> Bool {
		guard let inputString = input else { return true }
		let input = Input(rawValue: inputString)
		switch input {
		case .e:
			return true
		case .s:
			OutputView.show(displayable: board)
		case .none:
			OutputView.showErrorMessage()
		}
		return false
	}
}
