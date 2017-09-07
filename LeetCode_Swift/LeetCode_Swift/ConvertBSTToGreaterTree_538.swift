//
//  ConvertBSTToGreaterTree_538.swift
//  LeetCode_Swift
//
//  Created by Huni on 07/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ConvertBSTToGreaterTree_538 {
    func convertBST(_ root: TreeNode?) -> TreeNode? {
        

        
        // 利用BST、后序遍历累加就好了
        var count = 0
        
        func calculate(_ tree: TreeNode?) {
            guard let tree = tree else {
                return
            }
            
            calculate(tree.right)
            tree.val += count
            count = tree.val
            calculate(tree.left)
        }
        
        calculate(root)
        
        return root

    }
}
