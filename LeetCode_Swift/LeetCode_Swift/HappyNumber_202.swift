//
//  HappyNumber_202.swift
//  LeetCode_Swift
//
//  Created by Huni on 8/19/17.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class HappyNumber_202 {

    func isHappy(_ n: Int) -> Bool {
        
        var set = Set<Int>()
        var num = n
        
        while num != 1 {
            guard !set.contains(num) else {
                return false
            }
            set.insert(num)
            
            var temp = 0
            while num != 0 {
                temp += (num % 10) * (num % 10)
                num = num / 10
            }
            num = temp
        }
        
        return true
    }
}

