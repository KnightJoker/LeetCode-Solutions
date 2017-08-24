//
//  HammingDistance_461.swift
//  LeetCode_Swift
//
//  Created by Huni on 24/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class HammingDistance_461 {

    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        
        var res = 0
        var exc = x ^ y
        while exc != 0 {
            res += 1
            exc &= (exc - 1)
        }
        return res
    }
}
