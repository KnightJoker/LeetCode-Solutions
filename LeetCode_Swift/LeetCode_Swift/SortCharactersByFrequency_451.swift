//
//  SortCharactersByFrequency_451.swift
//  LeetCode_Swift
//
//  Created by Huni on 20/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class SortCharactersByFrequency_451 {
    func frequencySort(_ s: String) -> String {
        
        var dic = Dictionary<Character, Int>()
        var res = String()
        
        for c in s.characters {
            dic[c] = (dic[c] ?? 0) + 1
        }
        
        var sortValue = dic.values.sorted(){$0 > $1}

        while sortValue.count > 0 {
            for (k,v) in dic {
                if v == sortValue[0] {
                    for _ in 0..<v {
                        res.append(k)
                    }
                    sortValue.remove(at: 0)
                    dic.removeValue(forKey: k)
                    break
                }
            }
        }
        
        return res
    }
}
