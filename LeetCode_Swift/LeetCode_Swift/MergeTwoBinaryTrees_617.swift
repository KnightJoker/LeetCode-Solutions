//
//  MergeTwoBinaryTrees_617.swift
//  LeetCode_Swift
//
//  Created by Huni on 29/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class MergeTwoBinaryTrees_617 {

    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        
        if t1 == nil && t2 == nil {
            
            return nil;
        }
        if t1 == nil && t2 != nil {
            
            return t2;
        }
        if t1 != nil && t2 == nil {
            
            return t1;
        }
        if t1 != nil && t2 != nil {
            t1?.val = (t1?.val)! + (t2?.val)!
            t1?.left = self.mergeTrees(t1?.left, t2?.left)
            t1?.right = self.mergeTrees(t1?.right, t2?.right)
        }
        return t1
    }
}
