//
//  DecodeString_394.swift
//  LeetCode_Swift
//
//  Created by Huni on 20/03/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class DecodeString_394 {
    func decodeString(_ s: String) -> String {
        var words: [String] = []
        for char in s {
            words.append(String(char))
        }
        
        var stack = [String]()
        while words.count != 0 {
            let str = words.removeFirst()
            if str != "]" {
                stack.append(str)
            } else {
                let repeatWords = findRepeatWordIn(&stack)
                let times = findRepeatTimeIn(&stack)
                let repeatedString = String(repeating: repeatWords, count: times)
                stack.append(repeatedString)
            }
        }
        return stack.joined(separator: "")
    }
    
    
   private func findRepeatWordIn( _ stack : inout [String]) -> String {
        var res = ""
        var str = stack.removeLast()
        while str != "[" {
            res = str + res
            str = stack.removeLast()
        }
        return res
    }
    
   private func findRepeatTimeIn( _ stack: inout [String]) -> Int {
        var res = ""
        while let str = stack.last, Int(str) != nil {
            res = stack.removeLast() + res
        }
        
        return Int(res)!
    }
    

}
