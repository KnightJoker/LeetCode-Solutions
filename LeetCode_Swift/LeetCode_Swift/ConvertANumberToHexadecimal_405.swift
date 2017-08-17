//
//  ConvertANumberToHexadecimal_405.swift
//  LeetCode_Swift
//
//  Created by Huni on 17/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class ConvertANumberToHexadecimal_405 {
    func toHex(_ num: Int) -> String {
        var num = num
        if num == 0 {
            return "0"
        }
        var returnString = ""
        let map = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"]
        var i = 0
        while num != 0 && i < 8{
            returnString = map[num & 15] + returnString
            num = num >> 4
            i += 1
        }
        return returnString
    }
}
