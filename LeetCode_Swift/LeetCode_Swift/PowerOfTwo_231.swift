//
//  PowerOfTwo_451.swift
//  LeetCode_Swift
//
//  Created by Huni on 18/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class PowerOfTwo_231 {

    func isPowerOfTwo(_ n: Int) -> Bool {
     
        if n == 0 || n < 0 {
            return false
        }
        return n & (n - 1) == 0
    }

}
