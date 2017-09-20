//
//  MissingNumber_268.swift
//  LeetCode_Swift
//
//  Created by Huni on 20/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class MissingNumber_268 {
    func missingNumber(_ nums: [Int]) -> Int {
        
//        for i in 1..<nums.count + 1 {
//            if !nums.contains(i) {
//                return i
//            }
//        }
//        return 0
        
        var count = 0
        for num in nums {
            count += num
        }
        return nums.count * (nums.count + 1) / 2 - count
    }
}
