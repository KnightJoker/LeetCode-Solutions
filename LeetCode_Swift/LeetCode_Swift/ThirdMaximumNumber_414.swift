//
//  ThirdMaximumNumber_414.swift
//  LeetCode_Swift
//
//  Created by Huni on 16/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ThirdMaximumNumber_414 {
    func thirdMax(_ nums: [Int]) -> Int {
        
        let nums = nums.sorted()
        var numDic = Dictionary<Int,Int>()
        var array = Array<Int>()
        for num in nums {
            numDic[num] = (numDic[num] ?? 0) + 1
            if numDic[num] == 1 {
                array.append(num)
            }
        }
        if array.count < 3 {
            return array[array.count - 1]
        }
        return array[array.count - 3]
    }
}
