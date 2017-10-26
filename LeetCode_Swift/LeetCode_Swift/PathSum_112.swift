//
//  PathSum_112.swift
//  LeetCode_Swift
//
//  Created by Huni on 26/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class PathSum_112 {
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        
        guard let root = root else {
            return false
        }
        if sum == root.val && root.left == nil && root.right == nil {
            return true
        }
        return hasPathSum(root.left, sum - root.val) || hasPathSum(root.right, sum - root.val)
    }
    
}
