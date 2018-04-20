//
//  SpiralMatrixII_59.swift
//  LeetCode_Swift
//
//  Created by Huni on 2018/4/20.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class SpiralMatrixII_59 {
    private let offsets: [(x: Int, y: Int)] = [(1,0), (0,1), (-1, 0), (0, -1)]
    
    func generateMatrix(_ n: Int) -> [[Int]] {
        var matrix = Array(repeating: Array(repeating: 0, count: n), count: n)
        var x = 0
        var y = 0
        var value = 1
        self.fill(&matrix, n: n, x: &x, y: &y, val: &value)
        return matrix
    }
    
    func fill(_ matrix: inout [[Int]], n: Int, x: inout Int, y: inout Int, val: inout Int) {
        guard n > 0 else {
            return
        }
        if n == 1 {
            matrix[y][x] = val
            return
        }
        let n = n - 1
        self.offsets.forEach { offset in
            (0 ..< n).forEach { _ in
                matrix[y][x] = val
                x = x + offset.x
                y = y + offset.y
                val = val + 1
            }
        }
        y = y + 1
        x = x + 1
        self.fill(&matrix, n: n - 1, x: &x, y: &y, val: &val)
    }
}
