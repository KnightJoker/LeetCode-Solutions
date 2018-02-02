//
//  MaximumProductOfWordLengths_318.swift
//  LeetCode_Swift
//
//  Created by Huni on 02/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class MaximumProductOfWordLengths_318 {
    // Limit time
//    func maxProduct(_ words: [String]) -> Int {
//
//        if words.count == 0 || words.count == 1 {
//            return 0
//        }
//
//        var resMax = 0
//
//        for i in 0..<(words.count - 1) {
//            for j in (i+1)..<words.count {
//                resMax = max(resMax, self.compare(words[i], words[j]))
//            }
//        }
//
//        return resMax
//    }
//
//    private func compare(_ s1: String,_ s2: String) -> Int {
//
//        let s1Array = Array(s1.characters)
//        let s2Array = Array(s2.characters)
//        let set = Set(s1Array + s2Array)
//        return set.count == (Set(s1Array).count + Set(s2Array).count) ? s1Array.count * s2Array.count : 0
//    }
    func maxProduct(_ words: [String]) -> Int {
        var maxLen: [Int: Int] = [:]
        for item in words {
            var mask = 0
            for char in item.utf8 {
                mask |= 1 << Int(char - 97)
            }
            
            if maxLen[mask] == nil {
                maxLen[mask] = item.count
            }
            else {
                maxLen[mask] = max(maxLen[mask]!, item.count)
            }
        }
        
        var maxValue = 0
        for item1 in maxLen {
            for item2 in maxLen {
                if (item1.key & item2.key) == 0 {
                    maxValue = max(maxValue, item1.value * item2.value)
                }
            }
        }
        
        return maxValue
    }
}



