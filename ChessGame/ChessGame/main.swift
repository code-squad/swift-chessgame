//
//  main.swift
//  ChessGame
//
//  Created by JK on 2019/09/26.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

func chess() {
    print("게임을 시작하려면 s, 종료하려면 e 를 입력하세요.")
    
    while true {
        let answer = readLine() ?? ""
        if answer == "s" {
            let board = Board()
            board.initialize()
            print(board.printResult())
        }
        else if answer == "e" {
            print("종료되었습니다")
            break
        } else {
            print("유효한 값을 넣어주세요")
        }
    }
}

chess()
