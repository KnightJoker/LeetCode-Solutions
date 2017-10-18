//
//  PalindromeNumber_9.swift
//  LeetCode_Swift
//
//  Created by Huni on 18/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class PalindromeNumber_9 {
    func isPalindrome(_ x: Int) -> Bool {
        var x = x
        if x < 0 || (x != 0 && x % 10 == 0) {
            return false
        }
        var res = 0
        while x > res {
            res = res * 10 + x % 10
            x = x / 10
        }
        return (x == res || x == res / 10)
    }
}


