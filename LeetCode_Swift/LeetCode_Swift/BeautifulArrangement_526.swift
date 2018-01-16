//
//  BeautifulArrangement_526.swift
//  LeetCode_Swift
//
//  Created by Huni on 16/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class BeautifulArrangement_526 {
    var count = 0
    
    func countArrangement(_ N: Int) -> Int {
        
        if N == 0 {
            return 0
        }
        var nums = [Int](repeating: -1, count: N + 1)
        for i in 0...N {
            nums[i] = i
        }
        self.helper(nums: &nums, end: N)
        return count
    }
    
    private func swap(nums:inout [Int], i:Int, j:Int) {
        let temp = nums[i]
        nums[i] = nums[j]
        nums[j] = temp
    }
    
    private func helper(nums:inout [Int], end:Int) {
        if end == 0 {
            count += 1
            return
        }
        var i = end
        while i > 0 {
            self.swap(nums: &nums, i: end, j: i)
            if nums[end] % end == 0 || end % nums[end] == 0 {
                self.helper(nums: &nums, end: end - 1)
            }
            self.swap(nums: &nums, i: i, j: end)
            i -= 1
        }
        
    }
}



