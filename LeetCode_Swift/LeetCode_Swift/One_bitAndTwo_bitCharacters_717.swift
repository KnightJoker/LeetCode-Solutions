//
//  1_bitAnd2_bitCharacters_717.swift
//  LeetCode_Swift
//
//  Created by Huni on 08/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class One_bitAndTwo_bitCharacters_717 {
    func isOneBitCharacter(_ bits: [Int]) -> Bool {
        var i = 0
        while i < bits.count - 1 {
            if bits[i] == 0 {
                i += 1
            } else {
                i += 2
            }
        }
        return i == bits.count - 1
    }
}

