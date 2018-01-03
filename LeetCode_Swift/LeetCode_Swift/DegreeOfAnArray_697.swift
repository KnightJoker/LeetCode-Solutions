//
//  DegreeOfAnArray_697.swift
//  LeetCode_Swift
//
//  Created by Huni on 03/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation


//统计每个元素出现的次数，每个元素开始出现的位置和最后出现的位置，找到出现次数最多的元素的在数组中的最短长度即可。

class DegreeOfAnArray_697 {
    func findShortestSubArray(_ nums: [Int]) -> Int {
        var nums = nums
        var dict = [Int: (Int, Int, Int)]()
        
        var degreeLength = nums.count
        var maxFrequency = 0
        for i in 0 ..< nums.count {
            
            if let (count, head, _) = dict[nums[i]] {
                
                dict[nums[i]] = (count + 1, head, i - head + 1)
            } else {
                dict[nums[i]] = (1, i, 1)
            }
            
        }
        for (_, value) in dict {
            if maxFrequency < value.0 {
                degreeLength = value.2
                maxFrequency = value.0
            }
            if maxFrequency == value.0 {
                degreeLength = min(degreeLength, value.2)
            }
        }
        return degreeLength
    }
}



