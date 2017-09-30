//
//   MaximumSubarray_53.swift
//  LeetCode_Swift
//
//  Created by Huni on 29/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class  MaximumSubarray_53 {
    func maxSubArray(_ nums: [Int]) -> Int {
        
        guard nums.count > 1 else {
            if nums.count == 1 {
                return nums[0]
            }
            return 0
        }
        var maxSums = Array(repeating: 0, count: nums.count)
        maxSums[0] = nums[0]
        var ret = nums[0]
        for i in 1..<nums.count {
            maxSums[i] = (maxSums[i - 1] > 0 ? maxSums[i - 1] : 0) + nums[i]
            ret = max(ret, maxSums[i])
        }
        return ret
    }
}
