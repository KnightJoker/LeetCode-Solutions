//
//  LongestWordInDictionaryThroughDeleting_524.swift
//  LeetCode_Swift
//
//  Created by Huni on 01/03/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class LongestWordInDictionaryThroughDeleting_524 {
    func findLongestWord(_ s: String, _ d: [String]) -> String {
        var arr_s = Array(s)
        var result = ""
        for item in d {
            var arr_d = Array(item)
            var pi = 0
            var pj = 0
            while pi < arr_s.count && pj < arr_d.count {
                pj += (arr_s[pi] == arr_d[pj] ? 1 : 0)
                pi += 1
            }
            
            if pj == arr_d.count && (result.count < arr_d.count ||
                (result.count == arr_d.count && result > item)) {
                result = item
            }
        }
        
        return result
    }
}
