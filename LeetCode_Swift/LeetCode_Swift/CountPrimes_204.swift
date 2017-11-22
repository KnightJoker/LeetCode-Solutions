//
//  CountPrimes_204.swift
//  LeetCode_Swift
//
//  Created by Huni on 22/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class CountPrimes_204 {
    func countPrimes(_ n: Int) -> Int {
        guard n > 0 else {
            return 0
        }
        guard n > 2 else {
            return 0
        }
        guard n > 3 else {
            return 1
        }
        var count = 2
        var array = [Int](repeating: 0, count: n)
        for i in 2..<n {
            if array[i] > 0 {
                continue
            }
            for j in 2...n {
                if i * j >= n {
                    break
                }
                if array[i * j] == 0 {
                    array[i * j] = 1
                }
            }
        }
        for k in 4..<n {
            if array[k] == 0 {
                count += 1
            }
        }
        return count
    }
}


