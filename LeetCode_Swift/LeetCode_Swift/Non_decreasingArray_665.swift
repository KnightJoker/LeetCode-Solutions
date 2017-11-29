//
//  Non_decreasingArray_665.swift
//  LeetCode_Swift
//
//  Created by Huni on 29/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class Non_decreasingArray_665 {
    func checkPossibility(_ nums: [Int]) -> Bool {

        var nums = nums
        var count = 0
        
        for i in 1..<nums.count {
            if nums[i - 1] > nums[i] {
                count += 1
                if (i - 2 >= 0 && nums[i-2] > nums[i]) {
                    nums[i] = nums[i-1]
                } else {
                    nums[i-1] = nums[i]
                }
            }
        }

        return count <= 1
    }
}


