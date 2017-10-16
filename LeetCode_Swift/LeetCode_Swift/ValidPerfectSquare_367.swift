//
//  ValidPerfectSquare_367.swift
//  LeetCode_Swift
//
//  Created by Huni on 16/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ValidPerfectSquare_367 {
    func isPerfectSquare(_ num: Int) -> Bool {

        var x = num
        while x * x > num {
            x = (x + num / x) / 2
        }
        return x * x == num
        
    }
}


