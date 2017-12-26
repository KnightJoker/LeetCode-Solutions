//
//  ArrayNesting_565.swift
//  LeetCode_Swift
//
//  Created by Huni on 26/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ArrayNesting_565 {
    func arrayNesting(_ nums: [Int]) -> Int {
        
        var count = 0
        var set = Set<Int>()
        
        func check(nums:[Int],k:Int) -> Int {
            var temp = 0,k = k
            while !set.contains(k) {
                set.insert(k)
                k = nums[k]
                temp += 1
            }
            
            return temp
        }
        
        for i in 0..<nums.count {
            count = max(count, check(nums: nums, k: i))
        }
        
        return count
    }
    
}


