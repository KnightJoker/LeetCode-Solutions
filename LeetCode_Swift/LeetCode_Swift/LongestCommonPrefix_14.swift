//
//  LongestCommonPrefix_14.swift
//  LeetCode_Swift
//
//  Created by Huni on 15/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class LongestCommonPrefix_14 {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty {
            return ""
        }
        var result = strs[0]
        for str in strs {
            while !str.hasPrefix(result) {
                if result.isEmpty || result.count == 1{
                    return ""
                }
                result.remove(at: result.index(before: result.endIndex))
            }
        }
        return result
    }
}
