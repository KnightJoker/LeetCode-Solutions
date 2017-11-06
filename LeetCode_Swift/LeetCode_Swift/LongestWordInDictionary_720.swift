//
//  LongestWordInDictionary_720.swift
//  LeetCode_Swift
//
//  Created by Huni on 06/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class LongestWordInDictionary_720 {
    func longestWord(_ words: [String]) -> String {
        
        let words = words.sorted()
        var sets = Set<String>()
        var res = ""
        
        for word in words {
            let start = word.startIndex
            let end = word.index(word.startIndex, offsetBy: word.count - 1)
            let subString = word[start ..< end]
            if word.count == 1 || sets.contains(String(subString)) {
                sets.insert(word)
                if word.count > res.count {
                    res = word
                }
            }
        }

        return res
    }
}

