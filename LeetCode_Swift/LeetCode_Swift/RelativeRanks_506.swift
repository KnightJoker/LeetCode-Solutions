//
//  RelativeRanks_506.swift
//  LeetCode_Swift
//
//  Created by Huni on 14/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class RelativeRanks_506 {
    func findRelativeRanks(_ nums: [Int]) -> [String] {
        var returnArray = Array<String>()

        var dic = Dictionary<Int, Int>()
        
        for (i,v) in nums.sorted().reversed().enumerated() {
            dic[v] = i
        }
        for index in nums {
            if dic[index] == 0 {
                returnArray.append("Gold Medal")
            } else if dic[index] == 1 {
                returnArray.append("Silver Medal")
            } else if dic[index] == 2 {
                returnArray.append("Bronze Medal")
            } else {
                returnArray.append(String(dic[index]! + 1))
            }
        }
        
        return returnArray
    }
}
