//
//  MinimumAbsoluteDifferenceInBST_530.swift
//  LeetCode_Swift
//
//  Created by Huni on 11/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class MinimumAbsoluteDifferenceInBST_530 {
    func getMinimumDifference(_ root: TreeNode?) -> Int {
        
        guard root != nil else {
            return 0
        }
        
        var array = Array<Int>()
        
        func traversalTree(_ tree: TreeNode?) {
            guard let tree = tree else {
                return
            }
            traversalTree(tree.left)
            array.append(tree.val)
            traversalTree(tree.right)
        }
        
        traversalTree(root)
//        array.sort()
        
        var index = 0
        var diffArray = Array<Int>()
        
        while index < array.count - 1{
            diffArray.append(array[index + 1] - array[index])
            index += 1
        }
        
        return diffArray.min()!
    }
}
