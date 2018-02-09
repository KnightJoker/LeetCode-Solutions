//
//  DeleteOperationForTwoStrings_583.swift
//  LeetCode_Swift
//
//  Created by Huni on 09/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class DeleteOperationForTwoStrings_583 {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        let count1 = word1.count
        let count2 = word2.count
        
        let array1 = Array(word1)
        let array2 = Array(word2)
        
        if count1 == 0 {
            return count2
        }
        if count2 == 0 {
            return count1
        }
        
        var dp: [[Int]] = Array(repeatElement(Array(repeatElement(0, count: count2 + 1)), count: count1 + 1))
        
        for i in 0...count1 {
            dp[i][0] = i
        }
        for j in 0...count2 {
            dp[0][j] = j
        }
        
        for i in 1...count1 {
            for j in 1...count2 {
                if array1[i - 1] == array2[j - 1] {
                    dp[i][j] = dp[i - 1][j - 1]
                }
                else {
                    dp[i][j] = min(min(dp[i - 1][j - 1] + 2, dp[i - 1][j] + 1), dp[i][j - 1] + 1)
                }
            }
        }
        
        return dp[count1][count2]
    }
}
