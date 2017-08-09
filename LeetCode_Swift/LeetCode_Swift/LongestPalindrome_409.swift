//
//  LongestPalindrome_409.swift
//  LeetCode_Swift
//
//  Created by Huni on 09/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class LongestPalindrome_409 {

    func longestPalindrome(_ s: String) -> Int {
        
        var res = 0
        var letters = Array(repeating: 0, count: 200)
        let strArray = s.cString(using: String.Encoding.ascii)
        
        for temp in strArray! {
            
            if letters[temp.hashValue] == 0 {
                letters[temp.hashValue] = 1
            } else {
                letters[temp.hashValue] += 1
            }
        }
        
        for temp in letters {
            if temp > 1 {
                temp % 2 == 0 ? (res += temp) : (res += (temp-1))
            }
        }
        
        if res == s.characters.count {
            return res
        }
        return res + 1;
    }
}
