//
//  main.swift
//  ChessGame
//
//  Created by JK on 2019/09/26.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

func main() {
	GameController.setup()
	while true {
		GameController.showRequestInputMessage()
		GameController.getInput()
		let needQuit = GameController.handleInput()
		if needQuit {
			break
		}
	}
}

main()
