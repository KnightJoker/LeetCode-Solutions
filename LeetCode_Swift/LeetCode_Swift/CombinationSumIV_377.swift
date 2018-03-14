//
//  CombinationSumIV_377.swift
//  LeetCode_Swift
//
//  Created by Huni on 14/03/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class CombinationSumIV_377 {
    func combinationSum4(_ nums: [Int], _ target: Int) -> Int {
        var dp = [Int](repeating: 0, count: target + 1)
        dp[0] = 1
        let nums = nums.sorted()
        
        for i in 1...target {
            for num in nums {
                if i < num {
                    break
                }
                
                if dp[i - num] > Int.max - dp[i] {
                    continue
                }
                dp[i] += dp[i - num]
            }
        }
        
        return dp.last!
    }
}



