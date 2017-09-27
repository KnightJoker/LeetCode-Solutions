//
//  BinaryTreeLevelOrderTraversalII_107.swift
//  LeetCode_Swift
//
//  Created by Huni on 27/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class BinaryTreeLevelOrderTraversalII_107 {
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        
        // BFS 和 DFS 可以做两种解法
        var res = [[Int]]()
        var queue = [TreeNode]()
        
        if let root = root {
            queue.append(root)
        }
        
        while queue.count > 0 {
            let size = queue.count
            var level = [Int]()
            
            for _ in 1...size {
                let node = queue[0]
                queue.remove(at: 0)
                level.append(node.val)
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
            res.insert(level, at:0)
        }
        
        return res
    }
}
