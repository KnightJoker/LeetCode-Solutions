//
//  ShortestUnsortedContinuousSubarray_581.swift
//  LeetCode_Swift
//
//  Created by Huni on 27/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ShortestUnsortedContinuousSubarray_581 {
    func findUnsortedSubarray(_ nums: [Int]) -> Int {
        
        let sortNums = nums.sorted()
        
        var index = 0
        
        var indexArray = Array<Int>()
        
        while index < sortNums.count {
            if nums[index] != sortNums[index] {
                indexArray.append(index)
            }
            index += 1
        }
        if indexArray.count == 0 {
            return 0
        }
        return  indexArray[indexArray.count - 1] - indexArray[0] + 1
    }
}
