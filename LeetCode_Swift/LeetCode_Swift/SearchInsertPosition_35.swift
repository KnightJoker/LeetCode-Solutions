//
//  SearchInsertPosition_35.swift
//  LeetCode_Swift
//
//  Created by Huni on 29/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class SearchInsertPosition_35 {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        for (i,v) in nums.enumerated() {
            if v == target {
                return i
            }
        }
        for i in 0..<nums.count {
            if target < nums[0] {
                return 0
            } else if target > nums[nums.count - 1] {
                return nums.count
            } else if target > nums[i] && target < nums[i + 1] {
                return i + 1
            }
        }
        return 0
    }
}
