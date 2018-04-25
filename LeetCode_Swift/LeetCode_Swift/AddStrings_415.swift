//
//  AddStrings_415.swift
//  LeetCode_Swift
//
//  Created by Huni on 17/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class AddStrings_415 {

    func addStrings(_ num1: String, _ num2: String) -> String {
        var returnString = ""
        var count = 0,i = num1.count - 1,j = num2.count - 1
        while i >= 0 || j >= 0 || count > 0 {
            var cur = count
            cur += (i >= 0 ? Int(String(num1[num1.index(num1.startIndex, offsetBy: i)]))! :0)
            cur += (j >= 0 ? Int(String(num2[num2.index(num2.startIndex, offsetBy: j)]))! :0)
            count = cur / 10
            cur %= 10
            returnString = returnString + String(cur)
            i -= 1
            j -= 1
        }
        return String(returnString.reversed())
    }
}

