//
//  ToeplitzMatrix_766.swift
//  LeetCode_Swift
//
//  Created by Huni on 24/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class ToeplitzMatrix_766 {
    func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
        
        for i in 0..<matrix.count - 1 {
            for j in 0..<matrix[i].count - 1 {
                if matrix[i][j] != matrix[i + 1][j + 1] {
                    return false
                }
            }
        }
        return true
    }
}

