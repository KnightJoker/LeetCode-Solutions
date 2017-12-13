//
//  OptimalDivision_553.swift
//  LeetCode_Swift
//
//  Created by Huni on 13/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class OptimalDivision_553 {
    func optimalDivision(_ nums: [Int]) -> String {
        _ = nums.sorted { $0>$1 }
        var result:String = "\(nums[0])"
        if nums.count < 3 {
            if nums.count < 2 {
                return "\(nums[0])"
            }
            result.append("/\(nums[1])")
            return result
        }
        result += "/(\(nums[1])"
        for i in 2..<nums.count {
            result.append("/\(nums[i])")
        }
        result += ")"
        return result
    }
}
