//
//  RotateArray_189.swift
//  LeetCode_Swift
//
//  Created by Huni on 28/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class RotateArray_189 {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var index = 0
        while index < k {
            let last = nums.removeLast()
            nums.insert(last, at: 0)
            index += 1
        }
    }
}
