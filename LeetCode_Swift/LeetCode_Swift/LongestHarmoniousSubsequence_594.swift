//
//  LongestHarmoniousSubsequence_594.swift
//  LeetCode_Swift
//
//  Created by Huni on 26/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class LongestHarmoniousSubsequence_594 {
    func findLHS(_ nums: [Int]) -> Int {
        
        var dic = Dictionary<Int, Int>()
        
        for num in nums {
            dic[num] = (dic[num] ?? 0) + 1
        }
        
        var count = 0
        for key in Set(dic.keys) {
            // contains 函数太消耗时间
            if dic[key + 1] != nil {
                count = max(count, dic[key]! + dic[key + 1]!)
            }
        }
        
        return count
        
    }
}
