//
//  MinCostClimbingStairs_747.swift
//  LeetCode_Swift
//
//  Created by Huni on 04/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class MinCostClimbingStairs_747 {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        
        var a = 0,b = 0
        for c in cost {
            let temp = min(a, b) + c
            a = b
            b = temp
        }
        return min(a, b)
    }
}

