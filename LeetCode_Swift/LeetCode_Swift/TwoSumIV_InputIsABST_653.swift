//
//  TwoSumIV_InputIsABST_653.swift
//  LeetCode_Swift
//
//  Created by Huni on 06/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

/*  
    BST - Binary Sort Tree or Binary Search Tree (二叉排序树或者二叉搜索树)
 
        1 、若它的左子树非空，则左子树上所有结点的值均小于根结点的值
        2 、若它的右子树非空，则右子树上所有结点的值均大于根结点的值
        3 、左、右子树本身又各是一棵二叉排序树
 */

class TwoSumIV_InputIsABST_653 {
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        
        var array = Array<Int>()
        
        // 中序遍历 左、中、右
        func TraversalTree(_ root: TreeNode?) {
            guard let root = root else {
                return
            }
            TraversalTree(root.left)
            array.append(root.val)
            TraversalTree(root.right)
        }
        
        TraversalTree(root)
        
        var i = 0,j = array.count - 1
        
        while i < j {
            if array[i] + array[j] == k {
                return true
            } else if array[i] + array[j] < k {
                i += 1
            } else {
                j -= 1
            }
        }
        return false
    }
    

}

