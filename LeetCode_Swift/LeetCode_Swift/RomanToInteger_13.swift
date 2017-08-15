//
//  RomanToInteger_13.swift
//  LeetCode_Swift
//
//  Created by Huni on 15/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class RomanToInteger_13 {

    func romanToInt(_ s: String) -> Int {
        
        var count = 0
        for char in s.characters.reversed() {
            count += self.romanToIntWithCharacter(char,count)
        }
        return count
    }
    
    func romanToIntWithCharacter(_ c:Character,_ count:Int) -> Int {
        switch c {
        case "I":
            return count >= 5 ? -1: 1
        case "V":
            return 5
        case "X":
            return count >= 50 ? -10: 10
        case "L":
            return 50
        case "C":
            return count >= 500 ? -100: 100
        case "D":
            return 500
        case "M":
            return 1000
        default:
            return 0
        }
    }
}
