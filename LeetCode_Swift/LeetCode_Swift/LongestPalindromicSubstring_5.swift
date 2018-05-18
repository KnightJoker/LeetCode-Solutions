//
//  LongestPalindromicSubstring_5.swift
//  LeetCode_Swift
//
//  Created by Huni on 18/05/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class LongestPalindromicSubstring_5 {
    func longestPalindrome(_ s: String) -> String {
        // 预处理，给字符串周围添加字符
        var characters: [Character] = []
        for i in s {
            characters.append(Character("#"))
            characters.append(i)
        }
        characters.append(Character("#"))
        
        var rl = Array(repeating: 0, count: characters.count)
        var maxRight = 0
        var position = 0
        var maxLength = 0
        var maxPosition = 0
        for i in characters.indices {
            if i < maxRight {
                rl[i] = min(rl[2 * position - i], maxRight - i)
            } else {
                rl[i] = 1
            }
            
            while i >= rl[i] && i + rl[i] < characters.count && characters[i - rl[i]] == characters[i + rl[i]] {
                rl[i] += 1
            }
            if rl[i] + i - 1 > maxRight {
                maxRight = rl[i] + i - 1
                position = i
            }
            if rl[i] > maxLength {
                maxLength = rl[i]
                maxPosition = i
            }
        }
        
        var result = ""
        for i in (maxPosition - rl[maxPosition] + 1)...(maxPosition + rl[maxPosition] - 1) {
            if characters[i] != Character("#") {
                result.append(characters[i])
            }
        }
        return result
    }
}
