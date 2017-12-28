//
//  BulbSwitcherII_672.swift
//  LeetCode_Swift
//
//  Created by Huni on 28/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

// beats 100 in swift
class BulbSwitcherII_672 {
    func flipLights(_ n: Int, _ m: Int) -> Int {
 
        if m == 0 {
            return 1
        }
        if n <= 0 || m < 0 {
            return 0
        }
        if n == 1 {
            return 2
        } else if n == 2 {
            return m == 1 ? 3 : 4
        } else {
            return m == 1 ? 4 : ((m == 2) ? 7 : 8)
        }
    }
}


