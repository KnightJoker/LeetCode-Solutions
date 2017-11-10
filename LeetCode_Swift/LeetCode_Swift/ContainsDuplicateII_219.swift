//
//  ContainsDuplicateII_219.swift
//  LeetCode_Swift
//
//  Created by Huni on 10/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ContainsDuplicateII_219 {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
//        for i in 0..<nums.count {
//            for j in 0..<nums.count {
//                if nums[i] == nums[j] && i != j && abs(i - j) <= k {
//                    return true
//                }
//            }
//        }
//        return false
        
        var sets = Set<Int>()
        for i in 0..<nums.count {
            if i > k {
                sets.remove(nums[i - k - 1])
            }
            if sets.contains(nums[i]) {
                return true
            } else {
                sets.insert(nums[i])
            }
        }
        
        return false
    }
}

