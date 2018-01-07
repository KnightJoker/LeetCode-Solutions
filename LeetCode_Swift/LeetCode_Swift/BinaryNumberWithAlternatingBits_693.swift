//
//  BinaryNumberWithAlternatingBits_693.swift
//  LeetCode_Swift
//
//  Created by Huni on 07/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class BinaryNumberWithAlternatingBits_693 {
    func hasAlternatingBits(_ n: Int) -> Bool {
        
        var bitArray = Array<Int>()
        var n = n
        while n > 0 {
            bitArray.append(n % 2)
            n = n / 2
        }
        for i in 0..<bitArray.count - 1 {
            if bitArray[i] == bitArray[i + 1] {
                return false
            }
        }
        return true
    }
}
