//
//  RangeAdditionII_598.swift
//  LeetCode_Swift
//
//  Created by Huni on 08/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class RangeAdditionII_598 {
    func maxCount(_ m: Int, _ n: Int, _ ops: [[Int]]) -> Int {
        
        if ops.isEmpty { return m * n }
        var m = m,n = n
        
        for op in ops {
            m = min(m, op[0])
            n = min(n, op[1])
        }
        
        return m * n

    }
}
