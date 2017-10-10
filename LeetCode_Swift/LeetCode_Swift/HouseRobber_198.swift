//
//  HouseRobber_198.swift
//  LeetCode_Swift
//
//  Created by Huni on 10/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class HouseRobber_198 {
    func rob(_ nums: [Int]) -> Int {
        
        var countI = 0,countJ = 0
        
        for i in 0..<nums.count {
            if i % 2 == 0 {
                countI = max(countI + nums[i], countJ)
            } else {
                countJ = max(countI, countJ + nums[i])
            }
        }
        
        return max(countI, countJ)
    }
}

