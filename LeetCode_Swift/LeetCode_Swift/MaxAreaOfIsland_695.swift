//
//  MaxAreaOfIsland_695.swift
//  LeetCode_Swift
//
//  Created by Huni on 27/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class MaxAreaOfIsland_695 {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var grid = grid
        var maxArea = 0
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if (grid[i][j] == 1) {
                    maxArea = max(maxArea, findArea(&grid, i, j))
                }
            }
        }
        return maxArea
    }
    
    func findArea(_ grid: inout [[Int]], _ i: Int, _ j: Int) -> Int {
        if (i >= 0 && j >= 0 && i < grid.count && j < grid[0].count && grid[i][j] == 1) {
            grid[i][j] = 0
            return 1 + findArea(&grid, i+1, j) + findArea(&grid, i-1, j) + findArea(&grid, i, j+1) + findArea(&grid, i, j-1)
        } else {
            return 0
        }
    }
}
