//
//  BattleshipsInABoard_419.swift
//  LeetCode_Swift
//
//  Created by Huni on 12/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class BattleshipsInABoard_419 {
    func countBattleships(_ board: [[Character]]) -> Int {
        
        var count = 0
        
        if board.count == 0 {
            return 0
        }
        for i in 0..<board.count {
            for j in 0..<board[0].count {
                if board[i][j] == "." {
                    continue
                }
                if (i > 0 && board[i - 1][j] == "X") {
                    continue
                }
                if (j > 0 && board[i][j - 1] == "X") {
                    continue
                }
                count += 1
            }
        }
        return count
    }
}

