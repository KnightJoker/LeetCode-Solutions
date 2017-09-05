//
//  MaxConsecutiveOnes_485.swift
//  LeetCode_Swift
//
//  Created by Huni on 05/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class MaxConsecutiveOnes_485 {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
     
        var count = 0
        var returnNum = 0
        
        for num in nums {
            count = (count + 1) * num
            returnNum = max(returnNum, count)
        }
        
        return returnNum
    }
}

