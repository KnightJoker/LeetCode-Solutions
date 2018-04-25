//
//  ContiguousArray_525.swift
//  LeetCode_Swift
//
//  Created by Huni on 2018/4/17.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation


class ContiguousArray_525 {
    func findMaxLength(_ nums: [Int]) -> Int {

        
        var sumIndex = Dictionary<Int,Int>()
        sumIndex[0] = -1
        
        var zero = 0, one = 0, len = 0
        for i in 0..<nums.count {
            if nums[i] == 0 {
                zero += 1
            } else {
                one += 1
            }
            
            if sumIndex.keys.contains(zero - one) {
                len = max(len, i - sumIndex[zero - one]!)
            } else {
                sumIndex[zero - one] = i
            }
        }
        
        return len
    }
}
