//
//  FindTheDuplicateNumber_287.swift
//  LeetCode_Swift
//
//  Created by Huni on 11/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class FindTheDuplicateNumber_287 {
    func findDuplicate(_ nums: [Int]) -> Int {
        
        var dic = Dictionary<Int, Int>()
        for num in nums {
            dic[num] = (dic[num] ?? 0) + 1
        }
        for (k,v) in dic {
            if v > 1 {
                return k
            }
        }
        return 0
    }
}
