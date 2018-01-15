//
//  Prime NumberOfSetBitsInBinaryRepresentation_762.swift
//  LeetCode_Swift
//
//  Created by Huni on 15/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class PrimeNumberOfSetBitsInBinaryRepresentation_762 {
    func countPrimeSetBits(_ L: Int, _ R: Int) -> Int {
        
        let primes = Set([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
        var cnt = 0
        for i in L...R {
            var bits = 0
            var n = i
            while (n > 0) {
                bits += (n & 1)
                n >>= 1
            }
               cnt += (primes.contains(bits) ? 1 : 0)
        }
        
        return cnt
    }
}

