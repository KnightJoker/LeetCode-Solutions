//
//  FindModeInBinarySearchTree_501.swift
//  LeetCode_Swift
//
//  Created by Huni on 23/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class FindModeInBinarySearchTree_501 {
    func findMode(_ root: TreeNode?) -> [Int] {
        var dict = [Int: Int]()
        traverse(root, dict: &dict)
        let max = dict.values.max() ?? 0
        var res = [Int]()
        for (key, value) in dict {
            if value == max {
                res.append(key)
            }
        }
        return res
    }
    
    func traverse(_ root: TreeNode?, dict: inout [Int: Int]) {
        guard let tree = root else{
            return
        }
        dict[tree.val] = (dict[tree.val] ?? 0) + 1
        traverse(tree.left, dict: &dict)
        traverse(tree.right, dict: &dict)
    }
}
