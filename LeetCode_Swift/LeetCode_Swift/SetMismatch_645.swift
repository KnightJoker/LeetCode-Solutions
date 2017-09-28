//
//  SetMismatch_645.swift
//  LeetCode_Swift
//
//  Created by Huni on 28/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class SetMismatch_645 {
    func findErrorNums(_ nums: [Int]) -> [Int] {
    
        let sortedNums = nums.sorted()
        
        var sum = 0
        var sum2 = 0
        var preNum = 0
        var repeatNum = 0
        
        for index in 0 ..< sortedNums.count {
            
            sum += index + 1
            sum2 += sortedNums[index]
            
            if preNum == sortedNums[index] {
                repeatNum = sortedNums[index]
            }
            preNum = sortedNums[index]
        }
        return [repeatNum, repeatNum + sum - sum2]
        
    }
}
