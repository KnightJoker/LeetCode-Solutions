//
//  RemoveElement_27.swift
//  LeetCode_Swift
//
//  Created by Huni on 09/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class RemoveElement_27 {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums = nums.filter { (num) in num != val }
        return nums.count
    }
}
