//
//  PrintBinaryTree_655.swift
//  LeetCode_Swift
//
//  Created by Huni on 21/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class PrintBinaryTree_655 {
    func getHeight(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        return 1 + max(getHeight(root.left), getHeight(root.right))
    }
    
    func printTreeResult(_ root: TreeNode?, _ result: inout [[String]], _ level: Int, _ l: Int, _ r: Int) {
        guard let root = root else {
            return
        }
        
        let mid = l + (r - l) / 2
        result[level][mid] = String(root.val)
        printTreeResult(root.left, &result, level + 1, l, mid - 1)
        printTreeResult(root.right, &result, level + 1, mid + 1, r)
    }
    
    func printTree(_ root: TreeNode?) -> [[String]] {
        let height = getHeight(root)
        let width = Int(pow(2, Double(height))) - 1
        
        var result:[[String]] = Array(repeatElement(Array(repeatElement("", count: width)), count: height))
        
        printTreeResult(root, &result, 0, 0, width - 1)
        
        return result
    }
}
