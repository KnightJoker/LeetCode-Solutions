//
//  UglyNumber_263.swift
//  LeetCode_Swift
//
//  Created by Huni on 09/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class UglyNumber_263 {
    func isUgly(_ num: Int) -> Bool {
        var num = num
        if num <= 0 {
            return false
        }
        if num == 1 {
            return true
        }
        
        while num >= 2 && num % 2 == 0 {
            num /= 2
        }
        while num >= 3 && num % 3 == 0 {
            num /= 3
        }
        while num >= 5 && num % 5 == 0 {
            num /= 5
        }
        
        return num == 1
    }
}
