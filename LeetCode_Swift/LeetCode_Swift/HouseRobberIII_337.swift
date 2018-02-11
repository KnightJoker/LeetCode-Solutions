//
//  HouseRobberIII_337.swift
//  LeetCode_Swift
//
//  Created by Huni on 11/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class HouseRobberIII_337 {
    func rob(_ root: TreeNode?) -> Int {
        var l = 0,r = 0
        return self.bfs(root, &l, &r)
    }
    
    private func bfs(_ root: TreeNode?, _ l:inout Int,_ r:inout Int) -> Int {
        guard let root = root else {
            return 0
        }

        var ll = 0, lr = 0, rl = 0, rr = 0
        l = bfs(root.left, &ll, &lr)
        r = bfs(root.right, &rl, &rr)
        
        return max(root.val + ll + lr + rl + rr, l + r)
    }
}



