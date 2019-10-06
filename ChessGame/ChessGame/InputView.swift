//
//  InputView.swift
//  ChessGame
//
//  Created by hoemoon on 2019/10/06.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct InputView {
	static func getInput() -> String {
		guard let input = readLine() else {
			return ""
		}
		return input
	}
}
