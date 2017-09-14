//
//  ImageSmoother_661.swift
//  LeetCode_Swift
//
//  Created by Huni on 14/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ImageSmoother_661 {
    func imageSmoother(_ M: [[Int]]) -> [[Int]] {
        
        var ans = M
        for r in 0..<M.count {
            for c in 0..<M[0].count {
                let r1 = r == 0 ? 0:r - 1                   //  以下四行算投射矩阵
                let r2 = r == M.count - 1 ? M.count - 1: r + 1
                let c1 = c == 0 ? 0:c - 1
                let c2 = c == M[0].count - 1 ? M[0].count - 1: c + 1
                
                var total = 0
                var n = 0
                for rs in r1...r2{
                    for cs in c1...c2{
                        total += M[rs][cs]
                        n += 1
                    }
                }
                ans[r][c] = total / n
            }
        }
        return ans
    }
}
