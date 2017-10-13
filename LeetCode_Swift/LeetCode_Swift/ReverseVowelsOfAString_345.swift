//
//  ReverseVowelsOfAString_345.swift
//  LeetCode_Swift
//
//  Created by Huni on 13/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ReverseVowelsOfAString_345 {
    func reverseVowels(_ s: String) -> String {
        
        let vowels = ["a","e","i","o","u","A","E","I","O","U"]
        guard !s.isEmpty else{
            return s
        }
        var s = s
        var end = s.index(before: s.endIndex), start = s.startIndex
        var left = "", right = ""
        while start < end {
            while start < end {
                if vowels.contains(String(s[start])) {
                    left = String(s[start])
                    break
                }
                start = s.index(after: start)
            }
            
            while start < end {
                if vowels.contains(String(s[end])) {
                    right = String(s[end])
                    break
                }
                end = s.index(before: end)
            }
            if start != end {
                s.replaceSubrange(start...start, with: right)
                s.replaceSubrange(end...end, with: left)
                start = s.index(after: start)
                end = s.index(before: end)
            }
        }
        return s
    }
}

