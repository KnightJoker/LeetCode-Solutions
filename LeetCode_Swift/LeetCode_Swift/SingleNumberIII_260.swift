//
//  SingleNumberIII_260.swift
//  LeetCode_Swift
//
//  Created by Huni on 05/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class SingleNumberIII_260 {
    func singleNumber(_ nums: [Int]) -> [Int] {
        
        var dic = Dictionary<Int, Int>()
        var res = Array<Int>()
        
        
        for num in nums {
            dic[num] = (dic[num] ?? 0) + 1
        }
        
        for (k,v) in dic {
            if v == 1 {
                res.append(k)
            }
        }
        
        return res
    }
}
