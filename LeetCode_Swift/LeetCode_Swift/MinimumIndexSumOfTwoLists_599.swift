//
//  MinimumIndexSumOfTwoLists_599.swift
//  LeetCode_Swift
//
//  Created by Huni on 13/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class MinimumIndexSumOfTwoLists_599 {
    func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
        
        
        var returnList = Array<String>()
        var dic1 = Dictionary<String, Int>()

        
        var min = list1.count + list2.count
        
        for (i,v1) in list1.enumerated() {
            dic1[v1] = i
        }

        for (j,v2) in list2.enumerated() {

            if let i = dic1[v2] {
                if i + j < min {
                    returnList = [v2]
                    min = i + j
                } else if i + j == min {
                    returnList.append(v2)
                }
            }
            
        }
        return returnList
    }
}
