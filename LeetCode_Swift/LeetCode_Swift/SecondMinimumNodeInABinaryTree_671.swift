//
//  SecondMinimumNodeInABinaryTree_671.swift
//  LeetCode_Swift
//
//  Created by Huni on 25/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class SecondMinimumNodeInABinaryTree_671 {
    func findSecondMinimumValue(_ root: TreeNode?) -> Int {
        
        var array = Array<Int>()
        
      
        func traverse(_ root: TreeNode?) {
        
            guard root != nil else {
                return
            }
            array.append((root?.val)!)
            traverse(root?.left)
            traverse(root?.right)
            
        }
        
        traverse(root)

        array = Array(Set(array))
        
        if array.count == 1 {
            return -1
        } 
        return array.sorted()[1]
    }
}
