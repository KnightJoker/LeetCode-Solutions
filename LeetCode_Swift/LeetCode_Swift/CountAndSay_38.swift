//
//  CountAndSay_38.swift
//  LeetCode_Swift
//
//  Created by Huni on 25/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class CountAndSay_38 {
    func countAndSay(_ n: Int) -> String {
        
        var num = n
        var result = "1"
        if n == 1 {
            return result
        }
       
        while num > 1 {
            var last = result[result.startIndex]
            var count = 0
            var temp = ""
            for i in result.characters {
                if last == i {
                    count += 1
                } else {
                    temp.append("\(count)" + "\(last)")
                    last = i
                    count = 1
                }
            }
            temp.append("\(count)" + "\(last)")
            result = temp
            num -= 1
        }
        
        
        return result
    }
}

