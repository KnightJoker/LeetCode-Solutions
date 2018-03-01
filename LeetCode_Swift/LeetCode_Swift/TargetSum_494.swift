//
//  TargetSum_494.swift
//  LeetCode_Swift
//
//  Created by Huni on 28/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class TargetSum_494 {
    func findTargetSumWays(_ nums: [Int], _ S: Int) -> Int {
        
        let sum = nums.reduce(0,+)
        if (sum + S) % 2 > 0 || sum < S{
            return 0
        }
        
        var dp = [Int](repeating:0,count: (sum + S)/2 + 1)
        dp[0] = 1
        for num in nums{
            var s = (sum + S)/2
            while s >= num{
                dp[s] += dp[s - num]
                s -= 1
            }
        }
        
        return dp[dp.count - 1]
    }
}

