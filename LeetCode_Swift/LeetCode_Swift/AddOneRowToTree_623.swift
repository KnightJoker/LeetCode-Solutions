//
//  AddOneRowToTree_623.swift
//  LeetCode_Swift
//
//  Created by Huni on 24/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class AddOneRowToTree_623 {
    func addOneRow(_ root: TreeNode?, _ v: Int, _ d: Int) -> TreeNode? {

        var root = root
        if d == 1 {
            let newRoot = TreeNode(v)
            newRoot.left = root
            return newRoot
        }
        self.dfs(&root, v, d, 1)
        return root
    }
    
    private func dfs(_ root:inout TreeNode?, _ v: Int, _ d: Int, _ depth: Int) {
        guard let root = root else {
            return
        }
        
        if depth < d - 1 {
            self.dfs(&root.left, v, d, depth + 1)
            self.dfs(&root.right, v, d, depth + 1)
        } else {

            var temp = root.left
            root.left = TreeNode(v)
            root.left?.left = temp
            temp = root.right
            root.right = TreeNode(v)
            root.right?.right = temp
        }
    }
}

