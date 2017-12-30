//
//  LargestNumberAtLeastTwiceOfOthers_748.swift
//  LeetCode_Swift
//
//  Created by Huni on 31/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class LargestNumberAtLeastTwiceOfOthers_748 {
    func dominantIndex(_ nums: [Int]) -> Int {
        
        if nums.count < 2 {
            return 0
        }
        
        let sort = nums.sorted(){$0 > $1}
        if sort[0] >= (sort[1] * 2) {
            for i in 0..<nums.count {
                if nums[i] == sort[0] {
                    return i
                }
            }
        }
        return -1
    }
}
