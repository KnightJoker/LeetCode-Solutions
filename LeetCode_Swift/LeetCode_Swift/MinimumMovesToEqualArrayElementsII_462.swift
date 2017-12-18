//
//  MinimumMovesToEqualArrayElementsII_462.swift
//  LeetCode_Swift
//
//  Created by Huni on 15/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class MinimumMovesToEqualArrayElementsII_462 {
    func minMoves2(_ nums: [Int]) -> Int {
        
        let nums = nums.sorted()
        var count = 0
        for i in 0..<nums.count {
            count = count + abs(nums[i] - nums[nums.count / 2])
        }
        return count
    }
}
