//
//  LongestUnivaluePath_687.swift
//  LeetCode_Swift
//
//  Created by Huni on 13/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class LongestUnivaluePath_687 {
    func longestUnivaluePath(_ root: TreeNode?) -> Int {
        
        var res = [1]
        if root != nil {
            _ = dfs(root, res: &res)
        }
        return res[0]
    }
    
    private func dfs(_ node:TreeNode? , res:inout Array<Int>) -> Int {
        
        let l = node?.left != nil ? dfs(node?.left, res: &res) : 0
        let r = node?.right != nil ? dfs(node?.right, res: &res) : 0
        let resl = node?.left != nil && node?.left?.val == node?.val ? l + 1 : 0
        let resr = node?.right != nil && node?.right?.val == node?.val ? r + 1 : 0
        res[0] = max(res[0], resl + resr)
        return max(resl, resr)
    }
}

