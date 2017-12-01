//
//  MaximumBinaryTree_654.swift
//  LeetCode_Swift
//
//  Created by Huni on 01/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation


// Beat 100% in swift

class MaximumBinaryTree_654 {
    func constructMaximumBinaryTree(_ nums: [Int]) -> TreeNode? {
        if nums.count == 0 {
            return nil
        }
        return self.buildTree(nums, 0, nums.count - 1)
    }
    
    func buildTree(_ nums:[Int],_ start:Int,_ end:Int) -> TreeNode? {
        
        if start > end {
            return nil
        }
        
        var max = start
        var i = start + 1
        while i <= end {
            if nums[i] > nums[max] {
                max = i
            }
            i += 1
        }
        
        let root = TreeNode(nums[max])
        root.left = buildTree(nums, start, max - 1)
        root.right = buildTree(nums, max + 1, end)
        
        return root
        
    }
}

