//
//  PowerOfFour_342 .swift
//  LeetCode_Swift
//
//  Created by Huni on 13/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class PowerOfFour_342 {
    func isPowerOfFour(_ num: Int) -> Bool {

        if num == 0 {
            return false
        }
        if num == 1 {
            return true
        }
        
        if num / 4 == 1 && num % 4 == 0 {
            return true
        } else if num / 4 != 1 && num % 4 == 0 {
           return isPowerOfFour(num / 4)
        } else {
            return false
        }

    }
}
