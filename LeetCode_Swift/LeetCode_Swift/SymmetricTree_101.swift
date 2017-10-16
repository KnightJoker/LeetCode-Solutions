//
//  SymmetricTree_101.swift
//  LeetCode_Swift
//
//  Created by Huni on 16/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class Solution {
    
    func judgeTreeIsEqual(_ p:TreeNode?,_ q:TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }
        if p == nil || q == nil || p!.val != q!.val {
            return false
        }
        return judgeTreeIsEqual(p!.left, q!.right) && judgeTreeIsEqual(p!.right, q!.left)
    }

     // 另外一种形式的反转二叉树
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }
        return judgeTreeIsEqual(root.left, root.right)
    }

}
