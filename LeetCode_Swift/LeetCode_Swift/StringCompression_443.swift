//
//  StringCompression_443.swift
//  LeetCode_Swift
//
//  Created by Huni on 10/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class StringCompression_443 {
    func compress(_ chars: inout [Character]) -> Int {
        var i = 0
        while i < chars.count {
            let char = chars[i]
            var charCount = 1
            var j = i + 1
            while j < chars.count && chars[j] == char {
                j += 1
                charCount += 1
            }
            var newCharCount = 0
            if charCount > 1 {
                chars.removeSubrange(i+1..<j)
                while charCount > 0 {
                    let element: Character = Character("\(charCount % 10)")
                    chars.insert(element, at: i+1)
                    newCharCount += 1
                    charCount = charCount / 10
                }
            }
            i += (newCharCount + 1)
        }
        return chars.count
    }
}
