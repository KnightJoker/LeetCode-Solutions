//
//  FindBottomLeftTreeValue_513.swift
//  LeetCode_Swift
//
//  Created by Huni on 06/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class FindBottomLeftTreeValue_513 {
    func findBottomLeftValue(_ root: TreeNode?) -> Int {
        
        var res = 0,height = 0
        
        func bfs(_ tree: TreeNode?,_ depth:Int) {
            if height < depth {
                res = (tree?.val)!
                height = depth
            }
            if tree?.left != nil {
                bfs(tree?.left, depth + 1)
            }
            if tree?.right != nil {
                bfs(tree?.right, depth + 1)
            }
            
        }
        
        bfs(root, 1)
        return res
    }
}

