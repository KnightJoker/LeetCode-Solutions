//
//  TotalHammingDistance_477.swift
//  LeetCode_Swift
//
//  Created by Huni on 29/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation


// d（x,y）表示两个字x,y之间的汉明距离。对两个字符串进行异或运算，并统计结果为1的个数，那么这个数就是汉明距离。

class TotalHammingDistance_477 {
    func totalHammingDistance(_ nums: [Int]) -> Int {
        
        var total = 0
        for j in 0..<32 {
            var bitCount = 0
            for i in 0..<nums.count {
                bitCount += ((nums[i] >> j) & 1)
            }
            total += (bitCount * (nums.count - bitCount))
        }
        return total
    }
}


