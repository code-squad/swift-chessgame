//
//  main.swift
//  ChessGame
//
//  Created by JK on 2019/09/26.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

let board = Board()
board.initialize()

let inputView = UserInputView()
while case let command = inputView.read(with: .read), command != "e"  {
    switch command {
    case "s": board.showGame()
    default:
        print("잘못된 명령입니다")
    }
}
