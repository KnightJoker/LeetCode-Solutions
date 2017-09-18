//
//  MaximumProductOfThreeNumbers_628.swift
//  LeetCode_Swift
//
//  Created by Huni on 18/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class MaximumProductOfThreeNumbers_628 {
    func maximumProduct(_ nums: [Int]) -> Int {
        
        var nums = nums.sorted(by:>)
        return max(nums[0] * nums[1] * nums[2], nums[0] * nums[nums.count - 1] * nums[nums.count - 2])
    }
}
