//
//  ProductOfArrayExceptSelf_238.swift
//  LeetCode_Swift
//
//  Created by Huni on 21/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ProductOfArrayExceptSelf_238 {
//    Limit time
//    func productExceptSelf(_ nums: [Int]) -> [Int] {
//
//        var res = Array<Int>()
//        var temp = 1
//
//        for i in 0..<nums.count {
//            for j in 0..<nums.count {
//                if j != i {
//                    temp *= nums[j]
//                }
//            }
//            res.append(temp)
//            temp = 1
//        }
//
//        return res
//    }
    

    func productExceptSelf(_ nums: [Int]) -> [Int] {
        
        var res = [Int](repeating: 0, count: nums.count)
        
        if nums.count == 0 {
            return []
        }
        
        var temp = 1
        for i in 0..<nums.count {
            res[i] = temp
            temp *= nums[i]
        }
        temp = 1
        for i in stride(from:nums.count - 1, through:0, by:-1) {
            res[i] *= temp
            temp *= nums[i]
        }
        
        return res
    }
}
