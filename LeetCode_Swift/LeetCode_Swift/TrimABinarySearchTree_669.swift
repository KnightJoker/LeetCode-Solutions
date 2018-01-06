//
//  TrimABinarySearchTree_669.swift
//  LeetCode_Swift
//
//  Created by Huni on 06/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class TrimABinarySearchTree_669 {
    func trimBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> TreeNode? {
        guard root != nil else {
            return nil
        }
        
        if (root?.val)! >= L && (root?.val)! <= R {
            root?.left = trimBST(root?.left, L, R)
            root?.right = trimBST(root?.right, L, R)
            return root
        }
        if (root?.val)! < L {
            return trimBST(root?.right,L,R)
        }
        if (root?.val)! > R {
            return trimBST(root?.left,L,R)
        }
        return TreeNode(0)
    }
}


