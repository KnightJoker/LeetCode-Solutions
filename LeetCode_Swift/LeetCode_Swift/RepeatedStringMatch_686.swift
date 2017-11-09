//
//  RepeatedStringMatch_686.swift
//  LeetCode_Swift
//
//  Created by Huni on 09/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class RepeatedStringMatch_686 {
    func repeatedStringMatch(_ A: String, _ B: String) -> Int {
        var a = ""
        var count = 0
        
        while a.count < B.count {
            a = a + A
            count += 1
        }
        if a.contains(B){
            return count
        }
        a = a + A
        if a.contains(B) {
            return count + 1
        }
        return -1
    }
}



