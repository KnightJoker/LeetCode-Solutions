//
//  SingleElementInASortedArray_540.swift
//  LeetCode_Swift
//
//  Created by Huni on 30/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class SingleElementInASortedArray_540 {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        
        
        if nums[0] != nums[1] || nums.count < 2 {
            return nums[0]
        }
        if nums[nums.count - 1] != nums[nums.count - 2] {
            return nums[nums.count - 1]
        }
        
        for i in 1..<nums.count - 1 {
            if nums[i] != nums[i - 1] && nums[i] != nums[i + 1] {
                return nums[i]
            }
        }
        return 0
    }
}
