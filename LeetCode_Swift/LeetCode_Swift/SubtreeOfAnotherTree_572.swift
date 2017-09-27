//
//  SubtreeOfAnotherTree_572.swift
//  LeetCode_Swift
//
//  Created by Huni on 27/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class SubtreeOfAnotherTree_572 {
    
    // 可以参考100 SameTree
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        } else if p == nil || q == nil {
            return false
        }
        
        if p?.val != q?.val {
            return false
        } else {
            return self.isSameTree(p?.left, q?.left) && self.isSameTree(p?.right, q?.right)
        }
        
    }
    
    
    func isSubtree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        
        var res = false
        if s != nil && t != nil {
            if s?.val == t?.val{
                res = isSameTree(s, t)
            }
            if !res {
                res = isSubtree(s?.left, t)
            }
            if !res {
                res = isSubtree(s?.right, t)
            }
        }
        return res
    }
    
}

