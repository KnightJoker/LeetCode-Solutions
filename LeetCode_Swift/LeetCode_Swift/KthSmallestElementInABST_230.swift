//
//  KthSmallestElementInABST_230.swift
//  LeetCode_Swift
//
//  Created by Huni on 05/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class KthSmallestElementInABST_230 {
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        
        var res = Array<Int>()
        self.traverse(root, &res)
        
        
        return k <= res.count ? res[k - 1] : 0
    }
    
    private func traverse(_ root: TreeNode?, _ res:inout Array<Int>) {
        guard let root = root else {
            return
        }
        
        self.traverse(root.left, &res)
        res.append(root.val)
        self.traverse(root.right, &res)
        
    }
}
