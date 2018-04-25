//
//  IsSubsequence_392.swift
//  LeetCode_Swift
//
//  Created by Huni on 07/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class IsSubsequence_392 {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        
        if s.count == 0 {
            return true
        }
        
        let sArray = Array(s), tArray = Array(t)
        
        var indexS = 0, indexT = 0
        while indexT < tArray.count {
            if tArray[indexT] == sArray[indexS] {
                indexS += 1
                if indexS == sArray.count {
                    return true
                }
            }
            indexT += 1
        }
        
        return false
    }
}


