//
//  PascalSTriangleII_119.swift
//  LeetCode_Swift
//
//  Created by Huni on 23/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class PascalsTriangleII_119 {
    func getRow(_ rowIndex: Int) -> [Int] {
        
        var resArray = [[Int]]()
        
        if rowIndex <= 0 {
            return [1]
        }
        
        for i in 0...rowIndex {
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
        
        return resArray[rowIndex]

    }
}


