//
//  4SumII_454.swift
//  LeetCode_Swift
//
//  Created by Huni on 17/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class SumII_4_454 {
    func fourSumCount(_ A: [Int], _ B: [Int], _ C: [Int], _ D: [Int]) -> Int {
        
        var dic = Dictionary<Int,Int>()
        for i in 0..<C.count {
            for j in 0..<D.count {
                let sum = C[i] + D[j]
                dic[sum] = (dic[sum] ?? 0) + 1
                
            }
        }
        var res = 0
        
        for i in 0..<A.count {
            for j in 0..<B.count {
                res += (dic[(A[i] + B[j]) * -1] ?? 0)
            }
        }
        
        return res
    }
}


