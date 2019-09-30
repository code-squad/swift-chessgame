//
//  main.swift
//  ChessGame
//
//  Created by JK on 2019/09/26.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

func game() {
    print("*** 체스 게임 ***")
    print("게임 시작은 s, 종료는 e를 입력하세요.")
    
    while true {
        let line = readLine() ?? ""
        switch line {
        case "s":
            let board = Board()
            board.initialize()
            print(board.showBoard())
        case "e":
            break;
        default:
            print("\(line) 명령은 잘못되었습니다.")
        }
    }
}

game()
