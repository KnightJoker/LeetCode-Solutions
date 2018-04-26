//
//  FindMinimumInRotatedSortedArray_153.swift
//  LeetCode_Swift
//
//  Created by Huni on 2018/4/24.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class FindMinimumInRotatedSortedArray_153 {
    func findMin(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        while left < right {
            if nums[left] < nums[right] {
                return nums[left]
            }
            let mid = (left + right) / 2
            if nums[mid] >= nums[left] {
                left = mid + 1
            } else {
                right = mid
            }
        }
        return nums[left]
        
    }
}
