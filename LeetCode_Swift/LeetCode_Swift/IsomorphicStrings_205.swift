//
//  IsomorphicStrings_205.swift
//  LeetCode_Swift
//
//  Created by Huni on 28/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class IsomorphicStrings_205 {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        
        var dic = [Character: Character]()
        let ss = Array(s)
        let tt = Array(t)
        for i in 0..<ss.count {
            if let value = dic[ss[i]] {
                if value != tt[i] {
                    return false
                }
            } else {
                if dic.values.contains(tt[i]) {
                    return false
                }
                dic[ss[i]] = tt[i]
            }
        }
        return true
    }
}
