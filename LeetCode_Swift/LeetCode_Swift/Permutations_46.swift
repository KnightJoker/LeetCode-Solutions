//
//  Permutations_46.swift
//  LeetCode_Swift
//
//  Created by Huni on 04/03/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class Permutations_46 {
    func permute(_ nums: [Int]) -> [[Int]] {
        if (nums.endIndex <= 1) {
            return [nums]
        }
        else {
            let head = nums[0]
            let tail = [Int](nums.dropFirst())
            
            var out : [[Int]] = []
            
            for list in permute(tail) {
                for insert_index in 0...list.endIndex{
                    var new_list : [Int] = []
                    for i in 0...list.endIndex {
                        if i == insert_index {
                            new_list.append(head)
                        }
                        if i < list.endIndex {
                            new_list.append(list[i])
                        }
                    }
                    out.append(new_list)
                }
            }
            
            return out
        }
    }
}
