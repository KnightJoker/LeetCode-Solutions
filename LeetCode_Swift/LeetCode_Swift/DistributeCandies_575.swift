//
//  DistributeCandies_575.swift
//  LeetCode_Swift
//
//  Created by Huni on 31/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class DistributeCandies_575 {
    func distributeCandies(_ candies: [Int]) -> Int {
        
        var candDic = Dictionary<Int, Int>()
        var count = 0
        
        for candy in candies {
            candDic[candy] = count + 1
            count = candDic.count
        }

        return candDic.count < (candies.count / 2) ? candDic.count : (candies.count / 2)
    }
}
