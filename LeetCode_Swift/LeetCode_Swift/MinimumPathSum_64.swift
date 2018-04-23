//
//  MinimumPathSum_64.swift
//  LeetCode_Swift
//
//  Created by Huni on 2018/4/23.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class MinimumPathSum_64 {
    func minPathSum(_ grid: [[Int]]) -> Int {
        let rows = grid.count
        guard rows > 0 else {
            return Int.max
        }
        let cols = grid[0].count
        guard cols > 0 else {
            return Int.max
        }
        
        var dp = [Int](repeating: Int.max, count: cols+1)
        dp[1] = 0
        for i in 0..<rows {
            for j in 0..<cols {
                dp[j+1] = min(dp[j], dp[j+1]) + grid[i][j]
            }
        }
        
        return dp[cols]
    }
}
