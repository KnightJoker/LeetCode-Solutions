//
//  RepeatedSubstringPattern_459.swift
//  LeetCode_Swift
//
//  Created by Huni on 17/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class RepeatedSubstringPattern_459 {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        if s.characters.count < 2{
            return false
        }
        let str = s[s.index(after: s.startIndex)..<s.endIndex] + s[s.startIndex..<s.index(before: s.endIndex)]
        return str.contains(s)
    }
}
