//
//  FactorialTrailingZeroes_172.swift
//  LeetCode_Swift
//
//  Created by Huni on 24/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class FactorialTrailingZeroes_172 {
//    func trailingZeroes(_ n: Int) -> Int {
//        var num = 1,n = n
//        while n > 1 {
//            num = num * n
//            n = n - 1
//        }
//        var count = 0
//
//        while num >= 10 {
//            if num % 10 == 0 {
//                count += 1
//            }
//            num = num / 10
//        }
//
//        return count
//    }
    func trailingZeroes(_ n: Int) -> Int {
        return n == 0 ? 0 : n / 5 + trailingZeroes(n / 5)
    }
}

