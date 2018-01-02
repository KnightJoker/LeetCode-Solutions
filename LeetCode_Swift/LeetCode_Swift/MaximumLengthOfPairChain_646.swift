//
//  MaximumLengthOfPairChain_646.swift
//  LeetCode_Swift
//
//  Created by Huni on 02/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class MaximumLengthOfPairChain_646 {
    func findLongestChain(_ pairs: [[Int]]) -> Int {
        let chains = pairs.sorted{$0[0] < $1[0]}
        var res = 0
        var pre = Int.min
        
        for pair in chains {
            if pair[0] > pre {
                res += 1
                pre = pair[1]
            } else if pair[1] < pre {
                pre = pair[1]
            }
        }
        return res
    }
}



