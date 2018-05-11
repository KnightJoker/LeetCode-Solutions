//
//  LongestSubstringWithoutRepeatingCharacters_3.swift
//  LeetCode_Swift
//
//  Created by Huni on 11/05/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class LongestSubstringWithoutRepeatingCharacters_3 {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var charsIndex = [Int](repeating:-1,count:256)
        var lastRePos = 0
        var lastMaxL = 0
        var maxP = 0
        var maxL = 0
        var index = -1
        for cha in s.utf8 {
            let asciiV = Int(cha)
            index += 1
            let lastPos = charsIndex[asciiV]
            if lastPos < lastRePos {
                lastMaxL += 1
                if lastMaxL > maxL {
                    maxL = lastMaxL
                    maxP = lastRePos
                }
            } else {
                lastMaxL = index - lastPos
                lastRePos = lastPos + 1
            }
            charsIndex[asciiV] = index
        }
        return maxL
    }
}
