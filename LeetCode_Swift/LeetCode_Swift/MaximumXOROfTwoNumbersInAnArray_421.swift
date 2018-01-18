//
//  MaximumXOROfTwoNumbersInAnArray_431.swift
//  LeetCode_Swift
//
//  Created by Huni on 18/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class MaximumXOROfTwoNumbersInAnArray_421 {
    func findMaximumXOR(_ nums: [Int]) -> Int {
        
        var ret = 0
        
        for i in 0..<(nums.count-1) {
            for j in i..<nums.count {
                ret = (nums[i] ^ nums[j]) > ret ? (nums[i] ^ nums[j]) : ret
            }
        }
        
        return ret
    }
}
