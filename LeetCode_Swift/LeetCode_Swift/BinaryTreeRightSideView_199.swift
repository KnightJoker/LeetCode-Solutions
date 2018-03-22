//
//  BinaryTreeRightSideView_199.swift
//  LeetCode_Swift
//
//  Created by Huni on 22/03/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class BinaryTreeRightSideView_199 {
    func rightSideView(_ root: TreeNode?) -> [Int] {
        var result = Array<Int>()
        self.rightView(root, &result,0)
        return result
    }
    
    private func rightView(_ tree:TreeNode?, _ result:inout [Int], _ depth:Int) {
        
        guard let tree = tree else {
            return
        }
        
        if depth == result.count {
            result.append(tree.val)
        }
        self.rightView(tree.right, &result, depth + 1)
        self.rightView(tree.left, &result, depth + 1)
    }
}


