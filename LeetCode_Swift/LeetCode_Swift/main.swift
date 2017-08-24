//
//  main.swift
//  LeetCode_Swift
//
//  Created by Huni on 02/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


print("Hello, World!")

/*
 
 3
 / \
 9  20
 /  \
 15   7
 
 */

let a = HammingDistance_461()

let tree = TreeNode.init(1)
let tree1 = TreeNode.init(2)
let tree2 = TreeNode.init(3)
let tree3 = TreeNode.init(4)
let tree4 = TreeNode.init(5)

tree.left = tree1
tree.right = tree2
tree1.left = tree3
tree1.right = tree4

/*
 "3876620623801494171"
 "6529364523802684779"
 */

print(a.hammingDistance(1, 4))

