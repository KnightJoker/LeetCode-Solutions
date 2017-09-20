//
//  LongestContinuousIncreasingSubsequence_674.swift
//  LeetCode_Swift
//
//  Created by Huni on 20/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class LongestContinuousIncreasingSubsequence_674 {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        
        if nums.count <= 1 {
            return nums.count
        }
        
        var index = 1,res = 1
        
        for i in 0..<nums.count - 1{
            if nums[i + 1] > nums[i] {
                index += 1
            } else {
                index = 1
            }
            res = max(index, res)
        }


        return res
    }
}
