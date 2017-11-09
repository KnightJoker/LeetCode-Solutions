//
//  SumOfSquareNumbers_633.swift
//  LeetCode_Swift
//
//  Created by Huni on 09/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class SumOfSquareNumbers_633 {
//    Time Limit
//    func judgeSquareSum(_ c: Int) -> Bool {
//
//        if c == 1 {
//            return true
//        }
//
//        for i in 0...(c/2) {
//            for j in 0...(c/2) {
//                if i * i + j * j == c {
//                    return true
//                }
//            }
//        }
//        return false
//    }
    func judgeSquareSum(_ c: Int) -> Bool {
        
        var left = 0
        var right = Int(sqrt(Double(c)))
        
        while left <= right {
            let cur = left * left + right * right
            if cur < c {
                left += 1
            } else if cur > c {
                right -= 1
            } else {
                return true
            }
        }
        
        return false
    }
}


