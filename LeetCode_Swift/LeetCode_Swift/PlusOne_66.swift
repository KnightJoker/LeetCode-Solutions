//
//  PlusOne_66.swift
//  LeetCode_Swift
//
//  Created by Huni on 17/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class PlusOne_66 {
    func plusOne(_ digits: [Int]) -> [Int] {
        var nums = digits
        for i in (0..<nums.count).reversed() {
            if nums[i] < 9 {
                nums[i] = nums[i] + 1
                return nums
            }
            nums[i] = 0
        }
        return [1] + nums
    }
}
