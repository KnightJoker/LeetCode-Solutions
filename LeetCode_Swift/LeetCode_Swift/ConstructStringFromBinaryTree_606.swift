//
//  ConstructStringFromBinaryTree_606.swift
//  LeetCode_Swift
//
//  Created by Huni on 06/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ConstructStringFromBinaryTree_606 {
    func tree2str(_ t: TreeNode?) -> String {
        guard let t = t else {
            return ""
        }
        
        if t.left == nil && t.right == nil {
            return String(t.val)
        } else if t.left != nil && t.right == nil {
            return String(t.val) + "(" + self.tree2str(_: t.left) + ")"
        } else if t.left == nil && t.right != nil {
            return String(t.val) + "()" + "(" + self.tree2str(_: t.right) + ")"
        } else {
            return String(t.val) + "(" + self.tree2str(_: t.left) + ")" + "(" + self.tree2str(_: t.right) + ")"
        }
        
    }
}
