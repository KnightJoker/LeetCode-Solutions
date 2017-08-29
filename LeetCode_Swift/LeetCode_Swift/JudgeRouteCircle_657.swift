//
//  JudgeRouteCircle_657.swift
//  LeetCode_Swift
//
//  Created by Huni on 29/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class JudgeRouteCircle_657 {

    func judgeCircle(_ moves: String) -> Bool {
        
        var count = 0
        var temp = 0
        
        for char in moves.characters {
            switch char {
            case "R":
                temp = -1
            case "L":
                temp = 1
            case "U":
                temp = -2
            case "D":
                temp = 2
            default:
                temp = 0
            }
            count += temp
        }
        
        return count == 0
    }
}
