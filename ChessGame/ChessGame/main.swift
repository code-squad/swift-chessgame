//
//  main.swift
//  ChessGame
//
//  Created by JK on 2019/09/26.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation


func main() {
    while true {
        print("보드게임 명령어를 입력하세요 (s: 시작, e: 끝)")
        print("> ", terminator: "")
        let read = readLine() ?? ""
        
        switch read {
        case "s", "S":
            let board = Board()
            board.initialize()
            print(board.print())
            
        case "e", "E":
            break
            
        default :
            print("잘못된 입력입니다.")
            continue
        }
    }
}

main()
