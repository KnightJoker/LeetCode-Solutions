//
//  PowerOfThree_326.swift
//  LeetCode_Swift
//
//  Created by Huni on 18/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class PowerOfThree_326 {

    func isPowerOfThree(_ n: Int) -> Bool {
        
        var num = n
        while num > 0 && num % 3 == 0 {
            num /= 3
        }
        return num == 1
    }
}

