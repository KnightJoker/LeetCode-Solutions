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
        
        for char in word.characters {
            
            if char >= "a" && char <= "z" {
                count += 1
            }
        }
        
        if count == word.characters.count || count == 0 {
            return true
        } else if count == word.characters.count - 1 && word.characters[word.characters.startIndex] >= "A" && word.characters[word.characters.startIndex] <= "Z" {
            return true
        } else {
            return false
        }

    }
}
