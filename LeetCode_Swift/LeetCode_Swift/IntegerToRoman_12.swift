//
//  IntegerToRoman_12.swift
//  LeetCode_Swift
//
//  Created by Huni on 31/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class IntegerToRoman_12 {
    func intToRoman(_ num: Int) -> String {
        
        var num = num
        let values = [1000,900,500,400,100,90,50,40,10,9,5,4,1]
        let strs = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
        var res = ""
        
        for i in 0..<values.count {
            while num >= values[i] {
                num -= values[i]
                res += strs[i]
            }
        }
        
        return res
    }
}


