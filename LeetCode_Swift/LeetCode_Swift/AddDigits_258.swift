//
//  AddDigits_258.swift
//  LeetCode_Swift
//
//  Created by Huni on 02/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class AddDigits_258 {
    func addDigits(_ num: Int) -> Int {
        
        let quotient = num / 10
        let remainder = num % 10
        
        if quotient < 1 {
            return num
        } else {
          return (self.addDigits(quotient + remainder))
        }
        
    }
}
