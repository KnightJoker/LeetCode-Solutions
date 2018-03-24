//
//  RotateImage_48.swift
//  LeetCode_Swift
//
//  Created by Huni on 21/03/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class RotateImage_48 {
    func rotate(_ matrix: inout [[Int]]) {
        
        for i in 0..<matrix.count {
            for j in i..<matrix[0].count {
                var temp = 0
                temp = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = temp
            }
        }
        
        for i in 0..<matrix.count {
            for j in 0..<(matrix.count / 2) {
                var temp = 0
                temp = matrix[i][j]
                matrix[i][j] = matrix[i][matrix.count - 1 - j]
                matrix[i][matrix.count - 1 - j] = temp
            }
        }
        
    }
}



