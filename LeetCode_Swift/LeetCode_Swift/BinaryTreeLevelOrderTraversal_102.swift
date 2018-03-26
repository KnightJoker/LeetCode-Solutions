//
//  BinaryTreeLevelOrderTraversal_102.swift
//  LeetCode_Swift
//
//  Created by Huni on 24/03/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class BinaryTreeLevelOrderTraversal_102 {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var lists = [[Int]]()
        self.helper(&lists, root, 0)
        return lists
    }
    
    private func helper(_ lists: inout [[Int]], _ node: TreeNode?, _ height: Int) {
        if node == nil {
            return
        }
        if height >= lists.count {
            lists.append([])
        }
        lists[height].append(node!.val)
        self.helper(&lists, node!.left, height + 1)
        self.helper(&lists, node!.right, height + 1)
    }
}
