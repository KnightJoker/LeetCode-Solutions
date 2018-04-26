//
//  MonotoneIncreasingDigits_738.swift
//  LeetCode_Swift
//
//  Created by Huni on 2018/4/26.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class MonotoneIncreasingDigits_738 {
    func monotoneIncreasingDigits(_ N: Int) -> Int {
        let s = "\(N)"
        var ans = 0
        var v = (-1, -1)
        var flag = false
        for (i, char) in s.enumerated() {
            guard i + 1 < s.count else {
                break
            }
            let n = Int(String(char))!
            let next = Int(String(s[s.index(s.startIndex, offsetBy: i + 1)]))!
            if n > next {
                flag = true
                if v.0 == -1 || v.1 < n{
                    v = (i, n)
                }
                break
            }else if n == next && v.1 != n{
                v = (i, n)
            }
            ans = ans * 10 + n
        }
        guard flag else {
            return N
        }
        var digit = 1
        let power = s.count - v.0 - 1
        for _ in 0..<power { digit *= 10 }
        return v.1 * digit - 1 + N / digit / 10 * digit * 10
    }
}
