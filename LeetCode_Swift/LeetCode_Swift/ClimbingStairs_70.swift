//
//  ClimbingStairs_70.swift
//  LeetCode_Swift
//
//  Created by Huni on 22/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class ClimbingStairs_70 {
    func climbStairs(_ n: Int) -> Int {
        var stepOne = 0
        var stepTwo = 1
        var sum = 0
        var i = 0
        while i < n {
            sum = stepOne + stepTwo
            stepOne = stepTwo
            stepTwo = sum
            i += 1
        }
        
        return sum
    }
}
