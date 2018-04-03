//
//  UniqueBinarySearchTrees_96.swift
//  LeetCode_Swift
//
//  Created by Huni on 28/03/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class UniqueBinarySearchTrees_96 {
    func numTrees(_ n: Int) -> Int {
        var dp = Array(repeating: 0, count: n + 1)
        dp[0] = 1
        for i in 1...n {
            for j in 0..<i {
                dp[i] += dp[j] * dp[i - 1 - j]
            }
        }
        return dp[n]
    }
}

