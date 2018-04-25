//
//  ReverseStringII_541.swift
//  LeetCode_Swift
//
//  Created by Huni on 25/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ReverseStringII_541 {
    func reverseStr(_ s: String, _ k: Int) -> String {
        
        var s = Array(s)
        
        for i in stride(from: 0, to: s.count, by: 2 * k) {
            
            var i = i
            var j = min(i + k - 1, s.count - 1)
            
            while i < j {
                let temp = s[i]
                s[i] = s[j]
                s[j] = temp
                
                i += 1
                j -= 1
            }
        }
        return String(s)
    }
}
