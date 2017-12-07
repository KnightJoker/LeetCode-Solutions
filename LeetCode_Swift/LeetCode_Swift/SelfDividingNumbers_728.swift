//
//  SelfDividingNumbers_728.swift
//  LeetCode_Swift
//
//  Created by Huni on 07/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class SelfDividingNumbers_728 {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        
        var resArray = Array<Int>()
        
        for i in left...right {
            if self.judgeDividingNumber(i) {
                resArray.append(i)
            }
        }
        
        return resArray
    }
    
    func judgeDividingNumber(_ num: Int) -> Bool {
        
        if num < 10 {
            return true
        }
        var dividingNum = num
    
        while dividingNum >= 10 {
            
            if dividingNum % 10 == 0 {
                return false
            }
            if num % (dividingNum % 10) != 0 {
                return false
            }
            let temp = dividingNum / 10
            if temp < 10 && num % temp != 0 {
                return false
            }
            dividingNum = dividingNum / 10
        }
        return true
    }
}
