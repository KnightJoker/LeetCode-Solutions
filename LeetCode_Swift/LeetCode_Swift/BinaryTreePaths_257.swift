//
//  BinaryTreePaths_257.swift
//  LeetCode_Swift
//
//  Created by Huni on 11/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class BinaryTreePaths_257 {
    
    var res = Array<String>()
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        if root != nil {
            self.treePathStirng(root, "")
        }
        return res
    }
    
    func treePathStirng(_ root: TreeNode?,_ path: String) {
        if root?.left == nil && root?.right == nil {
            res.append(path + String(describing: root!.val))
        }
        if root?.left != nil {
            treePathStirng(root?.left, path + String(describing: root!.val) + "->")
        }
        if root?.right != nil {
            treePathStirng(root?.right, path + String(describing: root!.val) + "->")
        }
    }
}

