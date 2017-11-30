//
//  FindAllDuplicatesInAnArray_442.swift
//  LeetCode_Swift
//
//  Created by Huni on 30/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class FindAllDuplicatesInAnArray_442 {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        
        
        var res = Array<Int>()
        var dic = Dictionary<Int, Int>()
        
        for num in nums {
            dic[num] = (dic[num] ?? 0) + 1
        }
        
        for (k,v) in dic {
            if v > 1 {
                res.append(k)
            }
        }
        return res
    }
}
