//
//  IslandPerimeter_463.swift
//  LeetCode_Swift
//
//  Created by Huni on 01/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class IslandPerimeter_463 {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        
        var gridWall = 0
        let array = grid.flatMap({ $0 })
        
        for wall in array {
            if wall == 1 {
                gridWall += 4
            }
        }
        
        for index in 0..<grid.count  {
            for inx in 0..<grid[index].count  {

                if grid[index][inx] == 1 {
                    if index < grid.count - 1 && grid[index + 1][inx] == 1 {
                        gridWall -= 2
                    }
                    if inx < grid[index].count - 1 && grid[index][inx + 1] == 1 {
                        gridWall -= 2
                    }
                }
                
            }
        }
        
        return gridWall
        
    }
}

