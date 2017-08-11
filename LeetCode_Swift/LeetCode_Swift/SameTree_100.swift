//
//  SameTree_ 100.swift
//  LeetCode_Swift
//
//  Created by Huni on 10/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class SameTree_100 {
    
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
    
}

