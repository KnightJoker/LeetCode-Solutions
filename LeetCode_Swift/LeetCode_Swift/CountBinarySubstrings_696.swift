//
//  CountBinarySubstrings_696.swift
//  LeetCode_Swift
//
//  Created by Huni on 27/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

// 找到所有子串，其中0和1的数量相同，且0和1分别连续。
class CountBinarySubstrings_696 {
    func countBinarySubstrings(_ s: String) -> Int {
        
        var prev = 0,cur = 1,res = 0
        let sAarray = Array(s.characters)
        for i in 1..<sAarray.count {
            if sAarray[i] == sAarray[i - 1] {
                cur += 1
            } else {
                prev = cur
                cur = 1
            }
            if prev >= cur {
                res += 1
            }
        }
        
        return res
    }
}


