//
//  K_diffPairsInAnArray_532.swift
//  LeetCode_Swift
//
//  Created by Huni on 29/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class K_diffPairsInAnArray_532 {
    func findPairs(_ nums: [Int], _ k: Int) -> Int {
        if k < 0 { return 0 }
        var res = 0
        var dict = [Int : Int]()
        for i in nums {
            dict[i] = (dict[i] ?? 0) + 1
        }
        
        for key in dict.keys {
            if k == 0 {
                res += dict[key]! >= 2 ? 1 : 0
            } else {
                if dict[key + k] != nil {
                    res += 1
                }
            }
        }
        return res
    }
}


