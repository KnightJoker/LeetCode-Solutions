//
//  Pascal'sTriangle_118.swift
//  LeetCode_Swift
//
//  Created by Huni on 12/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class PascalsTriangle_118 {
    func generate(_ numRows: Int) -> [[Int]] {
        
        var resArray = [[Int]]()
        
        if numRows <= 0 {
            return resArray
        }
        
        for i in 0..<numRows {
            var rowArray = Array<Int>()
            for j in 0..<(i + 1) {
                if j == 0 || j == i {
                    rowArray.append(1)
                } else {
                    rowArray.append(resArray[i-1][j-1] + resArray[i-1][j])
                }
            }
            resArray.append(rowArray)
        }
        
        return resArray
    }
}
