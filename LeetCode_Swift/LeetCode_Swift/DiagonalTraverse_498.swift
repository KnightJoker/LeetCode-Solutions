//
//  DiagonalTraverse_498.swift
//  LeetCode_Swift
//
//  Created by Huni on 26/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class DiagonalTraverse_498 {
    func findDiagonalOrder(_ matrix: [[Int]]) -> [Int] {
        
        if matrix.count == 0 {
            return Array<Int>()
        }
        let m = matrix.count,n = matrix[0].count
        
        
        var result = [Int](repeating: 0, count: m * n)
        var row = 0, col = 0, d = 0
        var dirs = [[-1, 1],[1, -1]]
        for i in 0..<(m * n) {
            result[i] = matrix[row][col]
            row += dirs[d][0]
            col += dirs[d][1]
            
            if row >= m {
                row = m - 1
                col += 2
                d = 1 - d
            }
            if col >= n {
                col = n - 1
                row += 2
                d = 1 - d
            }
            if row < 0 {
                row = 0
                d = 1 - d
            }
            if col < 0 {
                col = 0
                d = 1 - d
            }
            
        }
        
        return result
    }
}

