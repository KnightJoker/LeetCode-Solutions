//
//  PathSumIII_437.swift
//  LeetCode_Swift
//
//  Created by Huni on 28/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class PathSumIII_437 {
    
    
    func dfsTree(_ root:TreeNode?,_ sum: Int) -> Int {
        
        var res = 0
        guard root != nil else {
            return res
        }
        if sum == root?.val {
            res += 1
        }
        res += self.dfsTree(root?.left, sum - (root?.val)!)
        res += self.dfsTree(root?.right, sum - (root?.val)!)
        return res
    }
    
    func pathSum(_ root: TreeNode?, _ sum: Int) -> Int {
        
        guard root != nil else {
            return 0
        }
        return self.dfsTree(root,sum) + self.pathSum(root?.left,sum) + self.pathSum(root?.right,sum)
    }
}


