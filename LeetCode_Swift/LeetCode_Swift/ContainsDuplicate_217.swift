//
//  ContainsDuplicate_217.swift
//  LeetCode_Swift
//
//  Created by Huni on 15/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//


/*
 
    这里可以利用Set的特性：集合中没有重复的元素，这一个特点来判断数组中是否有重复元素
 
 */

import Foundation

public class ContainsDuplicate_217 {

    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        return nums.count > Set(nums).count
    }
}

