//
//  ArithmeticSlices_413.swift
//  LeetCode_Swift
//
//  Created by Huni on 13/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ArithmeticSlices_413 {
    
    //DP solution beat 100% in swift
    func numberOfArithmeticSlices(_ A: [Int]) -> Int {
        
        var i = 0,count = 0,cur = 0
        while i < A.count - 2 {
            if  A[i + 1] - A[i] == A[i + 2] - A[i + 1] {
                cur += 1
                count += cur
            } else {
                cur = 0
            }
            i += 1
        }
        
        return count
    }
}
