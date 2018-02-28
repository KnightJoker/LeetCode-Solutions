//
//  PartitionLabels_763.swift
//  LeetCode_Swift
//
//  Created by Huni on 28/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class PartitionLabels_763 {
    func partitionLabels(_ S: String) -> [Int] {
        var hash = Array(repeating: (-1, -1), count: 26)
        for (i, char) in S.unicodeScalars.enumerated() {
            let n = Int(char.value) - 97
            if hash[n].0 == -1 {
                hash[n] = (i, i)
            } else {
                hash[n].1 = i
            }
        }
        
        var index = 0
        while index < hash.count {
            if hash[index].0 == -1 {
                hash.remove(at: index)
            } else {
                index += 1
            }
        }
        
        hash.sort{ $0.0 < $1.0 }
        
        var ans = [Int]()
        var maxIndex = 0
        var minIndex = 0
        
        for (start, end) in hash {
            if start > maxIndex {
                ans.append(maxIndex - minIndex + 1)
                maxIndex = end
                minIndex = start
            } else {
                maxIndex = max(maxIndex, end)
            }
        }
        ans.append(maxIndex - minIndex + 1)
        return ans
    }
}
