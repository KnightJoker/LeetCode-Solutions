//
//  FindLargestValueInEachTreeRow_505.swift
//  LeetCode_Swift
//
//  Created by Huni on 04/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class FindLargestValueInEachTreeRow_515 {
    func largestValues(_ root: TreeNode?) -> [Int] {
        
        guard let root = root else {
            return []
        }
        
        var res = [Int]()
        bfs(root, depth: 0, maxs: &res)
        return res
    }
    
    func bfs(_ root: TreeNode?, depth: Int, maxs: inout [Int]) {

        if depth >= maxs.count {
            maxs.append((root?.val)!)
        } else {
            maxs[depth] = max(maxs[depth], (root?.val)!)
        }
        bfs(root?.left, depth: depth + 1, maxs: &maxs)
        bfs(root?.right, depth: depth + 1, maxs: &maxs)
    }
}
