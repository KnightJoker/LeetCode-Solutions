//
//  InvertBinaryTree_226.swift
//  LeetCode_Swift
//
//  Created by Huni on 07/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class InvertBinaryTree_226 {

    func invertTree(_ root: TreeNode?) -> TreeNode? {

        guard root != nil else {
            return root
        }
        
        let tempTree = root?.left
        root?.left = root?.right
        root?.right = tempTree
        
        _ = invertTree(root?.left)
        _ = invertTree(root?.right)
        
        return root
        
    }

}
