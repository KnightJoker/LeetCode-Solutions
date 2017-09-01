//
//  ReshapeTheMatrix_566.swift
//  LeetCode_Swift
//
//  Created by Huni on 01/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ReshapeTheMatrix_566 {
    func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        
        var array = nums.flatMap({ $0 })            //映射为一维数组
        
        if array.count != r * c {
            return nums
        }
        
        var returnArray = [[Int]]()
        
        for i in 0..<r {
            returnArray.append([Int]())
            for _ in 0..<c {
                returnArray[i].append(array[0])
                array.removeFirst()
            }
        }
        
        return returnArray

    }
}
