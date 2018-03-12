//
//  LongestRepeatingCharacterReplacement_424.swift
//  LeetCode_Swift
//
//  Created by Huni on 12/03/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class LongestRepeatingCharacterReplacement_424 {
    func characterReplacement(_ s: String, _ k: Int) -> Int {

        let len = s.characters.count
        var sArray = Array(s.unicodeScalars)
        
        var count = Array<Int>(repeatElement(0, count: 26))
        var start = 0, maxCount = 0, maxLength = 0
        for end in 0..<len {
            count[Int(sArray[end].value - (UnicodeScalar("A")?.value)!)] += 1
            maxCount = max(maxCount, count[Int(sArray[end].value - (UnicodeScalar("A")?.value)!)])
            while end - start + 1 - maxCount > k {
                count[Int(sArray[end].value - (UnicodeScalar("A")?.value)!)] -= 1
                start += 1
            }
            maxLength = max(maxLength, end - start + 1)
        }
        
        return maxLength
    }
}



