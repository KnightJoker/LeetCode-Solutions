//
//  DetectCapital_520.swift
//  LeetCode_Swift
//
//  Created by Huni on 28/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class DetectCapital_520 {

    func detectCapitalUse(_ word: String) -> Bool {
        
        var count = 0
        
        for char in word {
            
            if char >= "a" && char <= "z" {
                count += 1
            }
        }
        
        if count == word.count || count == 0 {
            return true
        } else if count == word.count - 1 && word[word.startIndex] >= "A" && word[word.startIndex] <= "Z" {
            return true
        } else {
            return false
        }

    }
}
