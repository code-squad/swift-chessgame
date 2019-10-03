//
//  UserInputView.swift
//  ChessGame
//
//  Created by sungchan.you on 2019/10/04.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

enum Prompt {
    case read

    var description: String {
        switch self {
        case .read                  : return "명령을 입력하세요(s:Start, e:End)"
        }
    }
}

protocol UserInputReadable {
    func read(with prompt: Prompt) -> String
}

struct UserInputView: UserInputReadable {
    func read(with prompt: Prompt) -> String {
        print(prompt.description)
        return readLine() ?? ""
    }
}
