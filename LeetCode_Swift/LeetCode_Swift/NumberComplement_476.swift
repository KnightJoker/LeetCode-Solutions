//
//  NumberComplement_476.swift
//  LeetCode_Swift
//
//  Created by Huni on 25/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class NumberComplement_476 {
    func findComplement(_ num: Int) -> Int {
        
        var temp = num,mask = 1
        while temp != 0 {
            temp >>= 1
            mask <<= 1
        }
        return (mask - 1) ^ num
    }
}
