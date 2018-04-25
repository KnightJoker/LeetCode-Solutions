//
//  KeyboardRow_500.swift
//  LeetCode_Swift
//
//  Created by Huni on 30/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class KeyboardRow_500 {
    func findWords(_ words: [String]) -> [String] {
        
        let rules =  ["QWERTYUIOP", "ASDFGHJKL", "ZXCVBNM"]
        var result = words
        
        words.forEach { word in
            if (checkWords(word: word.uppercased())) {
                result = result.filter { $0 != word }
            }
        }

        func checkWords(word: String) -> Bool {
            
            let rule = rules.filter { $0.range(of: String(word.first!)) != nil }
            for c in word {
                if (rule.first!.range(of: String(c))) == nil {
                    return true
                }
            }
            
            return false
        }
        
        return result
    }
}
