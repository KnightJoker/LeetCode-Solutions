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



let a = ConstructStringFromBinaryTree_606()

let r0 = TreeNode(1)
let r1 = TreeNode(2)
let r2 = TreeNode(3)
let r3 = TreeNode(4)


r0.left = r1
r0.right = r2
r1.right = r3


print(a.tree2str(r0))

