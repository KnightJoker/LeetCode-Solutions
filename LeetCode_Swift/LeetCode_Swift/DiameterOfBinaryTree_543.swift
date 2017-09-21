//
//  DiameterOfBinaryTree_543.swift
//  LeetCode_Swift
//
//  Created by Huni on 21/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class DiameterOfBinaryTree_543 {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        
        var res = 0
        
        func getDepth(_ root:TreeNode?) -> Int {
            
            if root == nil {
                return 0
            }
            let left = getDepth(root?.left),right = getDepth(root?.right)
            res = max(left + right, res)
            return max(left, right) + 1
        }
      
        _ = getDepth(root)
        
        return res
    }
}
