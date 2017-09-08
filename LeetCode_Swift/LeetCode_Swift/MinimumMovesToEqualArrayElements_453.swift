//
//  MinimumMovesToEqualArrayElements_453.swift
//  LeetCode_Swift
//
//  Created by Huni on 08/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class MinimumMovesToEqualArrayElements_453 {
    func minMoves(_ nums: [Int]) -> Int {
        
        let min = nums.min()
        var count = 0
        
        for num in nums {
            count = count + num - min!
        }
        
        return count
    }
}
