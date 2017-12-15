//
//  MostFrequentSubtreeSum_508.swift
//  LeetCode_Swift
//
//  Created by Huni on 15/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class MostFrequentSubtreeSum_508 {
    func findFrequentTreeSum(_ root: TreeNode?) -> [Int] {
        
        var dic = Dictionary<Int,Int>()
        
        
        func TraversalTree(_ root: TreeNode?) -> Int {
            guard let root = root else {
                return 0
            }
            let left = TraversalTree(root.left)
            let right = TraversalTree(root.right)
            let sum = root.val + left + right
            dic[sum] = (dic[sum] ?? 0) + 1
            return sum
        }
        
        _ = TraversalTree(root)

        let max = dic.values.max()
        var res = Array<Int>()
        for (k,_) in dic {
            if dic[k] == max {
                res.append(k)
            }
        }
        return res
    }
}
