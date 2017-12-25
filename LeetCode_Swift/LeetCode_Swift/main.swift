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

//var hello = "Hello, World!"

////"Hello, World!".remove(at: "Hello, World!".startIndex)


//String()

let a = SplitLinkedListInParts_725()

let r0 = TreeNode(5)
let r1 = TreeNode(14)
let r2 = TreeNode(1)
let r3 = TreeNode(4)
let r4 = TreeNode(5)
let r5 = TreeNode(6)
let r6 = TreeNode(7)
//let r7 = TreeNode(8)
//let r4 = TreeNode(7)

r0.left = r1
//r0.right = r2
r1.left = r2
//r1.left = r3
//r1.right = r4
//r2.left = r5
//r2.right = r6

let b1 = ListNode(1)
let b2 = ListNode(2)
let b3 = ListNode(3)
let b4 = ListNode(4)
let b5 = ListNode(5)
let b6 = ListNode(6)
let b7 = ListNode(7)
let b8 = ListNode(8)
let b9 = ListNode(9)
let b10 = ListNode(10)

b1.next = b2
b2.next = b3
//b3.next = b4
//b4.next = b5
//b5.next = b6
//b6.next = b7
//b7.next = b8
//b8.next = b9
//b9.next = b10
//b5.next = b6

//var a1 = [1,2,3,4,5,6,7]

//print(Int(UnicodeScalar("A")))

//[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(a.splitListToParts(b1, 5))
















