//
//  NumberOfSegmentsInAString_434.swift
//  LeetCode_Swift
//
//  Created by Huni on 24/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class NumberOfSegmentsInAString_434 {
    func countSegments(_ s: String) -> Int {
        var count = 0,stringArray = Array<Character>()
        for char in s.characters {
            stringArray.append(char)
        }
        
        for i in 0..<stringArray.count {
            if stringArray[i] != " " && (i == 0 || stringArray[i - 1] == " ") {
                count += 1
            }
        }
        return count
    }
}

