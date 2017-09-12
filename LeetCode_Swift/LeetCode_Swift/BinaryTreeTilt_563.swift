//
//  BinaryTreeTilt_563.swift
//  LeetCode_Swift
//
//  Created by Huni on 12/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class BinaryTreeTilt_563 {
    func findTilt(_ root: TreeNode?) -> Int {
        
        var res = 0
        
        func traversalTree(_ root: TreeNode?) -> Int {
            guard let root = root else {
                return 0
            }
            
            let left = traversalTree(root.left)
            let right = traversalTree(root.right)
            
            res += Int(abs(left - right))
            
            return left + right + root.val
        }
        _ = traversalTree(root)
        return res
    }
}

