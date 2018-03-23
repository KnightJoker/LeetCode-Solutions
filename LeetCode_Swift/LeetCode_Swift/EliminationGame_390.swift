//
//  EliminationGame_390.swift
//  LeetCode_Swift
//
//  Created by Huni on 23/03/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class EliminationGame_390 {
    
    // beat 100 % in swift
    func lastRemaining(_ n: Int) -> Int {
        
        var isLeft = true
        var remaining = n, step = 1, head = 1
        while remaining > 1 {
            if isLeft || remaining % 2 == 1 {
                head += step
            }
            remaining /= 2
            step *= 2
            isLeft = !isLeft
        }
        
        return head
    }

}


