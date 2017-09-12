//
//  TwoSumII_InputArrayIsSorted_167.swift
//  LeetCode_Swift
//
//  Created by Huni on 12/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class TwoSumII_InputArrayIsSorted_167 {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        
// Time Limit Exceeded
        
//        var i = 0,j = 1
//        while i < numbers.count {
//            
//            if j == numbers.count {
//                i += 1
//                j = 0
//            }
//            
//            if numbers[i] + numbers[j] == target && i != j {
//                return [i + 1,j + 1]
//            } else {
//                j += 1
//            }
//        }
//        
        
        // 双向指针
        var i = 0,j = numbers.count - 1
        while i < j {
            if numbers[i] + numbers[j] == target {
                return [i + 1,j + 1]
            } else if numbers[i] + numbers[j] < target {
                i += 1
            } else {
                j -= 1
            }
            
        }
        return [0,0]
    }
}
