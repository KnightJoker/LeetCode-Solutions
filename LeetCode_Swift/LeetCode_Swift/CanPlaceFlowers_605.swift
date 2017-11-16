//
//  CanPlaceFlowers_605.swift
//  LeetCode_Swift
//
//  Created by Huni on 16/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

// Beats 100%

class CanPlaceFlowers_605 {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        
        var count = 1,res = 0
        for i in 0..<flowerbed.count {
            if flowerbed[i] == 0 {
                count += 1
            } else {
                res += (count - 1) / 2
                count = 0
            }
        }
        if count != 0 {
            res += count / 2
        }
        return res >= n
    }
}


