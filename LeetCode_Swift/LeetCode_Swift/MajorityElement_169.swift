//
//  MajorityElement_169.swift
//  LeetCode_Swift
//
//  Created by Huni on 14/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation


//  这个题目可以采用摩尔投票算法

class MajorityElement_169 {
    func majorityElement(_ nums: [Int]) -> Int {
        
        if nums.count == 1 {
            return nums[0]
        }
        
        var times = 1
        var targar = nums[0]
        for num in nums {
            if num == targar {
                times += 1
            } else {
                times -= 1
                if times == 0 {
                    times = 1
                    targar = num
                }
                
            }
        }
        return targar;
    }
}

