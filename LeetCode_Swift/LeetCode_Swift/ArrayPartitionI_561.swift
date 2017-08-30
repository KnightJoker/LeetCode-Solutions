//
//   ArrayPartitionI_561.swift
//  LeetCode_Swift
//
//  Created by Huni on 30/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class ArrayPartitionI_561 {

    func arrayPairSum(_ nums: [Int]) -> Int {
        
        let nums = nums.sorted()
        
        var index = 0,count = 0
        var temp = Array<Int>()
        
        for num in nums {
            if index < 2 {
                temp.append(num)
            }
            if index == 1 {
                count += temp.min()!
                temp.removeAll()
                index = 0
            } else {
                index += 1
            }
            
        }
        
        return count
    }
    
}
