//
//  MoveZeroes_283.swift
//  LeetCode_Swift
//
//  Created by Huni on 08/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

// inout 修饰，代表参数传递为引用传递

/*
 
    这个题我能想到的解题思路有三种：
            
            1.查找数组中的非0项，然后但凡是非0项与第一个0交换位置，即可。（需要自己在补充一个交换函数）
            2.在数组遍历中，创建一个新的数组，非0项放上去，最后在末置位补0即可。（下面代码）
            3.遍历数组，遇见0就删除，最后在末置位补0 （不过这个方法最后也没有通过代码实现，因为每次删除过后，数组的index都会被重新计算，这种方法只能用于数组中有且只有一个0的情况下）
 
 
 
 */

public class MoveZeroes_283 {
    func moveZeroes(_ nums: inout [Int]) {
        var index = 0
        for (_, num) in nums.enumerated() {
            if num != 0 {
                nums[index] = num
                index += 1
            }
        }
        while index < nums.count {
            nums[index] = 0
            index += 1
        }
        
    }
}
