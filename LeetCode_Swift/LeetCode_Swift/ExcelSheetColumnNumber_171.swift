//
//  ExcelSheetColumnNumber_171.swift
//  LeetCode_Swift
//
//  Created by Huni on 11/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class ExcelSheetColumnNumber_171 {

    func titleToNumber(_ s: String) -> Int {
        
        if s.characters.count == 0 {
            return 0
        }
        var sum = 0
        for char in s.characters {
            sum = 26 * sum + Int(String(char).unicodeScalars[String(char).unicodeScalars.startIndex].value - "A".unicodeScalars["A".unicodeScalars.startIndex].value) + 1;
        }
        return sum
    }
    
}
