//
//  MajorityElementII_229.swift
//  LeetCode_Swift
//
//  Created by Huni on 06/03/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class MajorityElementII_229 {
    func majorityElement(_ nums: [Int]) -> [Int] {
        
        var res = Array<Int>()
        var dic = Dictionary<Int, Int>()
        
        for num in nums {
            dic[num] = (dic[num] ?? 0) + 1
            if dic[num]! > (nums.count / 3) {
                res.append(num)
            }
        }
        
        return Array(Set(res))
    }
}
