//
//  SumOfLeftLeaves_404.swift
//  LeetCode_Swift
//
//  Created by Huni on 09/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation


public class SumOfLeftLeaves_404 {

    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        
        var leftCount = 0
        var rightCount = 0
        
        
        if root == nil {
            return 0
        }
        
        if ((root?.left) != nil && root?.left?.left == nil && root?.left?.right == nil) {
            leftCount = (root?.left?.val)! + self.sumOfLeftLeaves(root?.left)
        } else {
            leftCount = self.sumOfLeftLeaves(root?.left)
        }
        if ((root?.right) != nil){
            rightCount = self.sumOfLeftLeaves(root?.right)
        }
        
        return leftCount + rightCount
        
    }
    
}
