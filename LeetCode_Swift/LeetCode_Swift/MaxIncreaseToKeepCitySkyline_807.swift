//
//  MaxIncreaseToKeepCitySkyline_807.swift
//  LeetCode_Swift
//
//  Created by Huni on 02/04/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class MaxIncreaseToKeepCitySkyline_807 {
    func maxIncreaseKeepingSkyline(_ grid: [[Int]]) -> Int {
        guard grid.count != 0 else {
            return 0
        }
        
        let m = grid.count, n = grid[0].count
        var topBot = [Int](repeatElement(0, count: n))
        var leftRight = [Int](repeatElement(0, count: m))
        var res = 0
        for i in 0..<topBot.count {
            for j in 0..<grid[i].count {
                topBot[i] = max(topBot[i], grid[i][j])
            }
        }
        
        for i in 0..<leftRight.count {
            for j in 0..<grid[i].count {
                leftRight[i] = max(grid[j][i], leftRight[i])
            }
        }
        
        var dp = [[Int]](repeatElement([Int](repeatElement(0, count: n)), count: m))
        
        for i in 0..<m {
            for j in 0..<n {
                dp[i][j] = min(topBot[j], leftRight[i])
                res += (dp[i][j] - grid[i][j])
            }
        }
        
        return res
    }
}


//if (grid == null || grid.length == 0) return 0;
//int m = grid.length;
//int n = grid[0].length;
//int[] topbot = new int[n];
//int[] leftright = new int[m];
//int res = 0;
//for (int i = 0; i < topbot.length; i++) {
//    for (int j = 0; j < grid[i].length; j++) {
//        topbot[i] = Math.max(topbot[i], grid[i][j]);
//    }
//}
//for (int i = 0; i < leftright.length; i++) {
//    for (int j = 0; j < grid.length; j++) {
//        leftright[i] = Math.max(grid[j][i], leftright[i]);
//    }
//}
//int[][] dp = new int[m][n];
//for (int i = 0; i < m; i++) {
//    for (int j = 0; j < n; j++) {
//        dp[i][j] = Math.min(topbot[j], leftright[i]);
//        res += dp[i][j] - grid[i][j];
//    }
//}
//return res;

