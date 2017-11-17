//
//  NthDigit_400.swift
//  LeetCode_Swift
//
//  Created by Huni on 17/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

// Beats 100%

class NthDigit_400 {
    func findNthDigit(_ n: Int) -> Int {
        var len = 1,count = 9,start = 1,n = n
        while n > len * count {
            n -= len * count
            len += 1
            count *= 10
            start *= 10
        }
        start += (n - 1) / len
        let res = "\(start)"
        return Int(String(res[res.index(res.startIndex, offsetBy: ((n - 1) % len))]))!
        
    }
}

