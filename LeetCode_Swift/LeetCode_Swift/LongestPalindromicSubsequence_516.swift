//
//  LongestPalindromicSubsequence_516.swift
//  LeetCode_Swift
//
//  Created by Huni on 16/03/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class LongestPalindromicSubsequence_516 {
    func longestPalindromeSubseq(_ s: String) -> Int {
        
        var dp = Array(repeating: Array(repeating: 0, count: s.count), count: s.count)
        let sArray = Array(s)
        
        var i = s.count - 1
        while i >= 0 {
            dp[i][i] = 1
            for j in (i+1)..<s.count {
                if sArray[i] == sArray[j] {
                    dp[i][j] = dp[i + 1][j - 1] + 2
                } else {
                    dp[i][j] = max(dp[i + 1][j], dp[i][j - 1])
                }
            }
            i -= 1
        }
        return dp[0][s.count - 1]
    }

}



