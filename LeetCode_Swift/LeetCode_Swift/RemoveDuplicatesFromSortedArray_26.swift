//
//  RemoveDuplicatesFromSortedArray_26.swift
//  LeetCode_Swift
//
//  Created by Huni on 19/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class RemoveDuplicatesFromSortedArray_26 {
    func removeDuplicates(_ nums: inout [Int]) -> Int {

        if nums.count < 2 {
            return nums.count
        }
        
        var j = 0
        
        for num in nums {
            if num != nums[j] {
                j += 1
                nums[j] = num
            }
        }
        
        return j + 1
    }
}
