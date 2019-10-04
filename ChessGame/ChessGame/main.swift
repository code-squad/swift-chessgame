//
//  main.swift
//  ChessGame
//
//  Created by JK on 2019/09/26.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

func game() {
    print("=== chess game ===")
    print("Input 's' to start, 'e' to end")
    
    while let c = readLine() {
        switch c {
        case "s":
            printBoard()
        case "e":
            print("end")
            return
        default:
            print("wrong input")
            continue
        }
    }
}

func printBoard() {
    let board = Board()
    board.initialize()
    board.printBoard()
}

func main() {
    game()
}

main()
