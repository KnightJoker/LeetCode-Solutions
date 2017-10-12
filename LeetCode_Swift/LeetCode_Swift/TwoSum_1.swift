//
//  TwoSum_1.swift
//  LeetCode_Swift
//
//  Created by Huni on 12/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class TwoSum_1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var dic = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            if let otherIndex = dic[target - num] {
                return [otherIndex, i]
            }
            
            dic[num] = i
        }
        
        return []
    }
}
