//
//  ConvertSortedArrayToBinarySearchTree_108.swift
//  LeetCode_Swift
//
//  Created by Huni on 26/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ConvertSortedArrayToBinarySearchTree_108 {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {

        guard nums.count != 0 else {
            return nil
        }
        
        let root = TreeNode(nums[nums.count / 2])
        root.left = sortedArrayToBST(Array(nums[0..<nums.count / 2]))
        root.right = sortedArrayToBST(Array(nums[nums.count / 2 + 1..<nums.count]))

        return root
    }
}

