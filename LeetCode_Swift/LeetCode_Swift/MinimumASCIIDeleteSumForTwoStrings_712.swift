//
//  MinimumASCIIDeleteSumForTwoStrings_712.swift
//  LeetCode_Swift
//
//  Created by Huni on 20/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class MinimumASCIIDeleteSumForTwoStrings_712 {
    func minimumDeleteSum(_ s1: String, _ s2: String) -> Int {
        let m = s1.characters.count,n = s2.characters.count,max = Int.max
        var a = Array(s1.characters),b = Array(s2.characters)
        var res = [[Int]](repeating: [Int](repeating: 0, count: n + 1), count: m + 1)
        for i in stride(from:m, through:0, by:-1) {
            for j in stride(from: n, through: 0, by: -1) {
                if i < m || j < n {
                    let x = (i < m ? a[i].stringToAscii(c: a[i]) + res[i + 1][j] : max)
                    let y = (j < n ? b[j].stringToAscii(c: b[j]) + res[i][j + 1]: max)
                    res[i][j] = i < m && j < n && a[i] == b[j] ? res[i + 1][j + 1] : min(x, y)
                }
            }
        }
        return res[0][0]
    }
}

extension Character {
    func stringToAscii(c:Character) -> Int {
        var numberFromC = 0
        for scalar in String(c).unicodeScalars {
            numberFromC = Int(scalar.value)
        }
        return numberFromC
    }
}


