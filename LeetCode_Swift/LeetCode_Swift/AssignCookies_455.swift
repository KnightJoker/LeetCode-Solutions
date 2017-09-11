//
//  AssignCookies_455.swift
//  LeetCode_Swift
//
//  Created by Huni on 11/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class AssignCookies_455 {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        

        let g = g.sorted(), s = s.sorted()
        var i = 0, j = 0
        
        while(i < g.count && j < s.count) {
            if g[i] <= s[j] {
                i += 1
            }
            j += 1
        }
        return i
    }
}
