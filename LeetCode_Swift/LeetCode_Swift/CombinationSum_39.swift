//
//  CombinationSum_39.swift
//  LeetCode_Swift
//
//  Created by Huni on 22/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class CombinationSum_39 {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        
        var res = [[Int]]()
        
        func combination(start:Int, sum:Int, nums:[Int]) {
            guard sum <= target else {
                return
            }
            
            if sum == target {
                res.append(nums)
            }
            
            for i in start..<candidates.count {
                combination(start: i, sum: sum + candidates[i], nums: nums + [candidates[i]])
            }
            
        }
        combination(start: 0, sum: 0, nums: [Int]())
     

        return res
    }
}
