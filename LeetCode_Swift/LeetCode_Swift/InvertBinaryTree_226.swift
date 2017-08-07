//
//  InvertBinaryTree_226.swift
//  LeetCode_Swift
//
//  Created by Huni on 07/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

public class InvertBinaryTree_226 {

    func invertTree(_ root: TreeNode?) -> TreeNode? {

        if root != nil {
            let tempTree = root?.left
            root?.left = root?.right
            root?.right = tempTree
            
            invertTree(root?.left)
            invertTree(root?.right)
            
        } else {
            return nil
        }
        
        return root
        
    }

}
