//
//  DeleteAndEarn_740.swift
//  LeetCode_Swift
//
//  Created by Huni on 23/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class DeleteAndEarn_740 {
    func deleteAndEarn(_ nums: [Int]) -> Int {
        
        var count = Array<Int>(repeatElement(0, count: 10001))
        
        for n in nums {
            count[n] += n
        }
        var dp = Array<Int>(repeatElement(0, count: 10003))
        var i = 10000
        while i >= 0 {
            dp[i] = max(count[i] + dp[i + 2], dp[i + 1])
            i -= 1
        }
        
        return dp[0]
    }
}



