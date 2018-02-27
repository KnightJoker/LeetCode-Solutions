//
//  LetterCasePermutation_784.swift
//  LeetCode_Swift
//
//  Created by Huni on 25/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class RotatedDigits_788 {
    func rotatedDigits(_ N: Int) -> Int {
        
        var count = 0
        for i in 1...N {
            if self.isValid(i) {
                count += 1
            }
        }
        return count
    }
    
    private func isValid(_ N: Int) -> Bool {
        var N = N
        var valid = false
        while N > 0 {
            if N % 10 == 2 || N % 10 == 5 || N % 10 == 6 || N % 10 == 9 {
                valid = true
            }
            if N % 10 == 3 || N % 10 == 4 || N % 10 == 7 {
                return false
            }
            N /= 10
        }
        return valid
    }
}

