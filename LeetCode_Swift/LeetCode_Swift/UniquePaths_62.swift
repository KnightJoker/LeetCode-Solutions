//
//  UniquePaths_62 .swift
//  LeetCode_Swift
//
//  Created by Huni on 29/03/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class UniquePaths_62 {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        guard m > 0 && n > 0 else {
            return 0
        }
        var opt = Array(repeating:Array(repeating:1, count:n), count:m)
        for i in 0..<m {
            for j in 0..<n {
                guard i > 0 || j > 0 else {
                    continue
                }
                if i == 0 {
                    opt[i][j] = opt[i][j-1]
                } else if j == 0 {
                    opt[i][j] = opt[i-1][j]
                } else {
                    opt[i][j] = opt[i-1][j] + opt[i][j-1]
                }
            }
        }
        return opt[m-1][n-1]
    }
}
