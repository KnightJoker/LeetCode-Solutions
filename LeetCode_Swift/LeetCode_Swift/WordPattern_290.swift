//
//  WordPattern_290.swift
//  LeetCode_Swift
//
//  Created by Huni on 01/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class WordPattern_290 {
    func wordPattern(pattern: String, _ str: String) -> Bool {
        var wordDict = [String: Character]()
        var charDict = [Character: String]()
        let strs = str.components(separatedBy: " ")
        
        let patterns = [Character](pattern.characters)
        
        guard patterns.count == strs.count else {
            return false
        }
        
        for i in 0..<strs.count {
            let currentWord = strs[i]
            let currentChar = patterns[i]
            
            if wordDict[currentWord] == nil && charDict[currentChar] == nil{
                wordDict[currentWord] = currentChar
                charDict[currentChar] = currentWord
            } else {
                if wordDict[currentWord] != currentChar {
                    return false
                }
            }
        }
        return true
    }
}
