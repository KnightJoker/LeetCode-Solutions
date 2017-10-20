//
//  MaximumAverageSubarrayI_643.swift
//  LeetCode_Swift
//
//  Created by Huni on 20/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

/*
 先算出前k个元素的sum，之后依次向右枚举，每次删掉最左边的元素，加上最右边的元素，相当于窗口移动，并在每次移动时，更新max。当枚举结束后，返回 max / k。
 beat 100%
 */

class MaximumAverageSubarrayI_643 {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        
        var sum = 0
        for i in 0..<k {
            sum += nums[i]
        }
        var max = sum
        for j in k..<nums.count {
            sum += nums[j] - nums[j - k]
            max = max > sum ? max : sum
        }
        return Double(max) / Double(k)
    }
}


