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


print("Hello, World!")

/*
 
 3
 / \
 9  20
 /  \
 15   7
 
 */

let a = RomanToInteger_13()

let tree = TreeNode.init(1)
let tree1 = TreeNode.init(2)
let tree2 = TreeNode.init(3)
let tree3 = TreeNode.init(4)
let tree4 = TreeNode.init(5)

tree.left = tree1
tree.right = tree2
tree1.left = tree3
tree1.right = tree4


//var students = ["Kofi", "Abena", "Peter", "Kweku", "Akosua"]
//students.sort()
//print(students)
//
//var ss = [String]()
//var sss = Array<String>()
//
//ss.append("a")
//ss.append("b")
//
//sss.sort()
//
//
//
//print(ss)
/*
 "fffbfg"
 "effjfggbffjdgbjjhhdegh"
 */


print(a.romanToInt("MCMXCVI"))


