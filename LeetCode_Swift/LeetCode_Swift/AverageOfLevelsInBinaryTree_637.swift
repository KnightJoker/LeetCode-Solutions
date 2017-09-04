//
//  AverageOfLevelsInBinaryTree_637.swift
//  LeetCode_Swift
//
//  Created by Huni on 04/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

/*
    可以利用BFS（Breadth-First-Search、广度优先搜索）算法实现
 */

class AverageOfLevelsInBinaryTree_637 {
    func averageOfLevels(_ root: TreeNode?) -> Array<Double> {
        
        var returnArray = [Double]()

        var queue = [root]
        
        while !queue.isEmpty {
            let n = queue.count
            var sum = 0
            for _ in 0..<n {
                let node = queue.removeFirst()
                sum += (node?.val)!
                if let left = node?.left {
                    queue.append(left)
                }
                if let right = node?.right {
                    queue.append(right)
                }
            }
            let average = Double(sum) / Double(n)
            returnArray.append(average)
        }
        return returnArray
        
    }
}
