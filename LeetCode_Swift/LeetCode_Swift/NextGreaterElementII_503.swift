//
//  NextGreaterElementII_503.swift
//  LeetCode_Swift
//
//  Created by Huni on 30/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class NextGreaterElementII_503 {
    func nextGreaterElements(_ nums: [Int]) -> [Int] {
        var res = [Int]()
        for i in 0..<nums.count {
            var index = i != nums.count - 1 ? i + 1 : 0
            while nums[i] >= nums[index] {
                if i == index {
                    break
                }
                if index != nums.count - 1{
                    index += 1
                }else {
                    index = 0
                }
                
            }
            if i == index {
                res.append(-1)
            }else {
                res.append(nums[index])
            }
        }
        return res
    }
}
