//
//  IntegerBreak_343.swift
//  LeetCode_Swift
//
//  Created by Huni on 24/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class IntegerBreak_343 {
    func integerBreak(_ n: Int) -> Int {
        
        if n == 2 || n == 3 {
            return n - 1
        }
        var res = 1,n = n
        while n > 4 {
            res *= 3
            n -= 3
        }
        
        return res * n
    }
}

