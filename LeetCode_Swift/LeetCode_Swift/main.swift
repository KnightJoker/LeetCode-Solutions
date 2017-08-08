//
//  main.swift
//  LeetCode_Swift
//
//  Created by Huni on 02/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

print("Hello, World!")

let a = MoveZeroes_283()

var nums = [0, 1, 0, 3, 12,0,0,1,2,3]

a.moveZeroes(&nums)

print(nums)


