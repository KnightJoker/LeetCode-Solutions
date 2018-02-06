//
//  TwoKeysKeyboard_650.swift
//  LeetCode_Swift
//
//  Created by Huni on 06/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class TwoKeysKeyboard_650 {
    func minSteps(_ n: Int) -> Int {
        if n <= 1 {
            return 0
        }
        if n == 2 {
            return 2
        }
        
        var n1 = n
        var s = 0
        for i in 2...n {
            while n1 % i == 0 {
                s += i
                n1 /= i
            }
        }
        return s
    }
}


