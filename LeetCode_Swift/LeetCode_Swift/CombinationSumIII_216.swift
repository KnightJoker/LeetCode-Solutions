//
//  CombinationSumIII_216.swift
//  LeetCode_Swift
//
//  Created by Huni on 22/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class CombinationSumIII_216 {
    func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
        var res = [[Int]]()
        func combination(start: Int, count: Int, sum: Int, nums:[Int]) {

            guard count <= k || sum <= n else {
                return
            }
            if count == k && sum == n {
                res.append(nums)
            }
            for i in start..<10 {
                combination(start: i + 1, count: count + 1, sum: sum + i, nums: nums + [i])
            }
        }
        combination(start: 1, count: 0, sum: 0, nums: [Int]())
        return res
    }
}

