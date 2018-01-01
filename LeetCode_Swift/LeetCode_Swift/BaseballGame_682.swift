//
//  BaseballGame_682.swift
//  LeetCode_Swift
//
//  Created by Huni on 01/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class BaseballGame_682 {
    func calPoints(_ ops: [String]) -> Int {
        var last = [Int]()
        var ans = 0
        for op in ops {
            let val: Int
            switch op {
            case "C":
                ans -= last.removeLast()
                continue
            case "+":
                val = last.last! + last[last.count - 2]
            case "D":
                val = last.last! * 2
            default:
                val = Int(op)!
            }
            ans += val
            last.append(val)
        }
        return ans
    }	
}
