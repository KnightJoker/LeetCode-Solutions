//
//  BinaryTreeInorderTraversal_94.swift
//  LeetCode_Swift
//
//  Created by Huni on 28/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class BinaryTreeInorderTraversal_94 {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        
        var res = Array<Int>()
        
        func traversal(_ node: TreeNode?) {
            guard node != nil else {
                return
            }
            
            traversal(node?.left)
            res.append((node?.val)!)
            traversal(node?.right)
        }
        traversal(root)
        return res
    }
}
