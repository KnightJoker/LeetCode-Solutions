//
//  FindPivotIndex_724.swift
//  LeetCode_Swift
//
//  Created by Huni on 05/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class FindPivotIndex_724 {
    func pivotIndex(_ nums: [Int]) -> Int {
        
        if nums.count <= 2 {
            return -1
        }
        
        var count = 0
        for num in nums {
            count += num
        }

        var leftCount = 0
        for i in 0..<nums.count {
            if i == 0 {
                leftCount = 0
            } else {
                leftCount += nums[i - 1]
            }
            let rightCount = count - leftCount - nums[i]
            if leftCount == rightCount {
                return i
            }
        }
        
        return -1
    }
}
