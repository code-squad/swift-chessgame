//
//  OutputView.swift
//  ChessGame
//
//  Created by hoemoon on 2019/10/06.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

protocol Displayable {
	func represent() -> [String]
}

struct OutputView {
	static func show(displayable: Displayable) {
		for line in displayable.represent() {
			print(line)
		}
	}
	
	static func showRequestInputMessage() {
		print("type 's' or 'e'.")
	}
	
	static func showErrorMessage() {
		print("unexpected error occured.")
	}
}
