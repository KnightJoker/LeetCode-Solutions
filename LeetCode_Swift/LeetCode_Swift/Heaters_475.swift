//
//  Heaters_475.swift
//  LeetCode_Swift
//
//  Created by Huni on 17/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

// Beats 100%

class Heaters_475 {
    func findRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
        
        let houses = houses.sorted()
        var heaters = heaters.sorted()
        var i = 0,res = 0
        for house in houses {
            while i < heaters.count - 1 && heaters[i] + heaters[i + 1] <= house * 2 {
                i += 1
            }
            res = max(res, abs(heaters[i] - house))
        }
        return res
    }
}


