//
//  FirstUniqueCharacterInAString_ 387.swift
//  LeetCode_Swift
//
//  Created by Huni on 14/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class FirstUniqueCharacterInAString_387 {
    func firstUniqChar(_ s: String) -> Int {
        let stringArray = s.map({ String($0) })
        var array:[String:Int] = [:]
        var ans:Int!
        
        for i in 0..<stringArray.count{
            array[stringArray[i]] = array[stringArray[i]] == nil ? i : -1
        }
        
        for bas in array{
            if bas.value >= 0{
                if ans == nil || bas.value < ans{
                    ans = bas.value
                }
            }
        }
        return ans == nil ? -1 : ans
    }
}

