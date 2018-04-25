//
//  JewelsAndStones_771.swift
//  LeetCode_Swift
//
//  Created by Huni on 24/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class JewelsAndStones_771 {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        
        var dic = Dictionary<Character, Int>()
        var count = 0
        
        for s in S {
            dic[s] = (dic[s] ?? 0) + 1
        }
        
        for j in J {
            if S.contains(j) {
                count += dic[j]!
            }
        }
        
        return count
    }
}
