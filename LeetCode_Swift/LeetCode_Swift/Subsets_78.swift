//
//  Subsets_78.swift
//  LeetCode_Swift
//
//  Created by Huni on 12/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class Subsets_78 {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var subsetList = [[Int]]()
        
        subsetList.append([Int]())
        
        for num in nums {
            let subsetListCopy = subsetList
            
            for subset in subsetListCopy {
                var subsetCopy = subset
                subsetCopy.append(num)
                subsetList.append(subsetCopy)
            }
        }
        
        return subsetList
    }
}
