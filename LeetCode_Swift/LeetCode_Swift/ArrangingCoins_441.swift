//
//  ArrangingCoins_441.swift
//  LeetCode_Swift
//
//  Created by Huni on 20/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ArrangingCoins_441 {
    func arrangeCoins(_ n: Int) -> Int {
        
        var count = 0
        for i in 0...n {
            count += i
            if count > n {
                return i - 1
            }
        }
        return n == 1 ? 1 : 0
    }
}
