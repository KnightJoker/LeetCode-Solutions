//
//  ReconstructOriginalDigitsFromEnglish_423 .swift
//  LeetCode_Swift
//
//  Created by Huni on 08/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation


class ReconstructOriginalDigitsFromEnglish_423 {
    func originalDigits(_ s: String) -> String {
        var nums = [Int](repeating:0,count:10)
        for char in s {
            if char == "z" {nums[0] += 1}
            if char == "o" {nums[1] += 1}
            if char == "w" {nums[2] += 1}
            if char == "h" {nums[3] += 1}
            if char == "u" {nums[4] += 1}
            if char == "f" {nums[5] += 1}
            if char == "x" {nums[6] += 1}
            if char == "s" {nums[7] += 1}
            if char == "g" {nums[8] += 1}
            if char == "i" {nums[9] += 1}
        }
        nums[3] -= nums[8]
        nums[7] -= nums[6]
        nums[5] -= nums[4]
        nums[9] = nums[9] - nums[8] - nums[6] - nums[5]
        nums[1] = nums[1] - nums[0] - nums[2] - nums[4]
        
        var result = ""
        for i in 0 ..< nums.count where nums[i] != 0 {
            for _ in 0 ..< nums[i] {
                result += String(i)
            }
        }
        return result
    }
}
