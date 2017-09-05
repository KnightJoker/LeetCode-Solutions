//
//  FindAllNumbersDisappearedInAnArray_448.swift
//  LeetCode_Swift
//
//  Created by Huni on 05/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class FindAllNumbersDisappearedInAnArray_448 {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        
        var nums = nums
        var result = [Int]()
        
        for i in 0..<nums.count {
            let val = abs(nums[i]) - 1
            if nums[val] > 0 {
                nums[val] = -nums[val]
            }
        }
        
        for i in 0..<nums.count {
            if nums[i] > 0 {
                result.append(i + 1)
            }
        }
        return result
    }
}

/*
 
 var index = 1
 var array = Array<Int>()
 
 while index <= nums.count {
 if !nums.contains(index) {
 array.append(index)
 }
 index += 1
 }
 return array
 
 
 */
